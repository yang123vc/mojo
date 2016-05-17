// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library nfc_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;



class NfcData extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<int> data = null;

  NfcData() : super(kVersions.last.size);

  static NfcData deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static NfcData decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NfcData result = new NfcData();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.data = decoder0.decodeUint8Array(8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeUint8Array(data, 8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "data of struct NfcData: $e";
      rethrow;
    }
  }

  String toString() {
    return "NfcData("
           "data: $data" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["data"] = data;
    return map;
  }
}


class _NfcTransmissionCancelParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _NfcTransmissionCancelParams() : super(kVersions.last.size);

  static _NfcTransmissionCancelParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _NfcTransmissionCancelParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NfcTransmissionCancelParams result = new _NfcTransmissionCancelParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_NfcTransmissionCancelParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _NfcReceiverOnReceivedNfcDataParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  NfcData nfcData = null;

  _NfcReceiverOnReceivedNfcDataParams() : super(kVersions.last.size);

  static _NfcReceiverOnReceivedNfcDataParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _NfcReceiverOnReceivedNfcDataParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NfcReceiverOnReceivedNfcDataParams result = new _NfcReceiverOnReceivedNfcDataParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.nfcData = NfcData.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(nfcData, 8, false);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "nfcData of struct _NfcReceiverOnReceivedNfcDataParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_NfcReceiverOnReceivedNfcDataParams("
           "nfcData: $nfcData" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["nfcData"] = nfcData;
    return map;
  }
}


class _NfcTransmitOnNextConnectionParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  NfcData nfcData = null;
  Object transmission = null;

  _NfcTransmitOnNextConnectionParams() : super(kVersions.last.size);

  static _NfcTransmitOnNextConnectionParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _NfcTransmitOnNextConnectionParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NfcTransmitOnNextConnectionParams result = new _NfcTransmitOnNextConnectionParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.nfcData = NfcData.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.transmission = decoder0.decodeInterfaceRequest(16, true, NfcTransmissionStub.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(nfcData, 8, false);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "nfcData of struct _NfcTransmitOnNextConnectionParams: $e";
      rethrow;
    }
    try {
      encoder0.encodeInterfaceRequest(transmission, 16, true);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "transmission of struct _NfcTransmitOnNextConnectionParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_NfcTransmitOnNextConnectionParams("
           "nfcData: $nfcData" ", "
           "transmission: $transmission" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class NfcTransmitOnNextConnectionResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool success = false;

  NfcTransmitOnNextConnectionResponseParams() : super(kVersions.last.size);

  static NfcTransmitOnNextConnectionResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static NfcTransmitOnNextConnectionResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NfcTransmitOnNextConnectionResponseParams result = new NfcTransmitOnNextConnectionResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.success = decoder0.decodeBool(8, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeBool(success, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "success of struct NfcTransmitOnNextConnectionResponseParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "NfcTransmitOnNextConnectionResponseParams("
           "success: $success" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["success"] = success;
    return map;
  }
}


class _NfcRegisterParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _NfcRegisterParams() : super(kVersions.last.size);

  static _NfcRegisterParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _NfcRegisterParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NfcRegisterParams result = new _NfcRegisterParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_NfcRegisterParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _NfcUnregisterParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _NfcUnregisterParams() : super(kVersions.last.size);

  static _NfcUnregisterParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _NfcUnregisterParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NfcUnregisterParams result = new _NfcUnregisterParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_NfcUnregisterParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}

const int _nfcTransmissionMethodCancelName = 0;

class _NfcTransmissionServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class NfcTransmission {
  static const String serviceName = null;
  void cancel();
}

class _NfcTransmissionProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl {
  _NfcTransmissionProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _NfcTransmissionProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _NfcTransmissionProxyControl.unbound() : super.unbound();

  service_describer.ServiceDescription get serviceDescription =>
      new _NfcTransmissionServiceDescription();

  String get serviceName => NfcTransmission.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcTransmissionProxyControl($superString)";
  }
}

class NfcTransmissionProxy
    extends bindings.Proxy
    implements NfcTransmission {
  NfcTransmissionProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _NfcTransmissionProxyControl.fromEndpoint(endpoint));

  NfcTransmissionProxy.fromHandle(core.MojoHandle handle)
      : super(new _NfcTransmissionProxyControl.fromHandle(handle));

  NfcTransmissionProxy.unbound()
      : super(new _NfcTransmissionProxyControl.unbound());

  static NfcTransmissionProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcTransmissionProxy"));
    return new NfcTransmissionProxy.fromEndpoint(endpoint);
  }

  factory NfcTransmissionProxy.connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    NfcTransmissionProxy p = new NfcTransmissionProxy.unbound();
    s.connectToService(url, p, serviceName);
    return p;
  }


  void cancel() {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _NfcTransmissionCancelParams();
    ctrl.sendMessage(params,
        _nfcTransmissionMethodCancelName);
  }
}

class _NfcTransmissionStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<NfcTransmission> {
  NfcTransmission _impl;

  _NfcTransmissionStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NfcTransmission impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcTransmissionStubControl.fromHandle(
      core.MojoHandle handle, [NfcTransmission impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcTransmissionStubControl.unbound([this._impl]) : super.unbound();



  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _nfcTransmissionMethodCancelName:
        _impl.cancel();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NfcTransmission get impl => _impl;
  set impl(NfcTransmission d) {
    if (d == null) {
      throw new core.MojoApiError("$this: Cannot set a null implementation");
    }
    if (isBound && (_impl == null)) {
      beginHandlingEvents();
    }
    _impl = d;
  }

  @override
  void bind(core.MojoMessagePipeEndpoint endpoint) {
    super.bind(endpoint);
    if (!isOpen && (_impl != null)) {
      beginHandlingEvents();
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcTransmissionStubControl($superString)";
  }

  int get version => 0;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _NfcTransmissionServiceDescription();
    }
    return _cachedServiceDescription;
  }
}

class NfcTransmissionStub
    extends bindings.Stub<NfcTransmission>
    implements NfcTransmission {
  NfcTransmissionStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NfcTransmission impl])
      : super(new _NfcTransmissionStubControl.fromEndpoint(endpoint, impl));

  NfcTransmissionStub.fromHandle(
      core.MojoHandle handle, [NfcTransmission impl])
      : super(new _NfcTransmissionStubControl.fromHandle(handle, impl));

  NfcTransmissionStub.unbound([NfcTransmission impl])
      : super(new _NfcTransmissionStubControl.unbound(impl));

  static NfcTransmissionStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcTransmissionStub"));
    return new NfcTransmissionStub.fromEndpoint(endpoint);
  }

  static service_describer.ServiceDescription get serviceDescription =>
      _NfcTransmissionStubControl.serviceDescription;


  void cancel() {
    return impl.cancel();
  }
}

const int _nfcReceiverMethodOnReceivedNfcDataName = 0;

class _NfcReceiverServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class NfcReceiver {
  static const String serviceName = "nfc::NfcReceiver";
  void onReceivedNfcData(NfcData nfcData);
}

class _NfcReceiverProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl {
  _NfcReceiverProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _NfcReceiverProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _NfcReceiverProxyControl.unbound() : super.unbound();

  service_describer.ServiceDescription get serviceDescription =>
      new _NfcReceiverServiceDescription();

  String get serviceName => NfcReceiver.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcReceiverProxyControl($superString)";
  }
}

class NfcReceiverProxy
    extends bindings.Proxy
    implements NfcReceiver {
  NfcReceiverProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _NfcReceiverProxyControl.fromEndpoint(endpoint));

  NfcReceiverProxy.fromHandle(core.MojoHandle handle)
      : super(new _NfcReceiverProxyControl.fromHandle(handle));

  NfcReceiverProxy.unbound()
      : super(new _NfcReceiverProxyControl.unbound());

  static NfcReceiverProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcReceiverProxy"));
    return new NfcReceiverProxy.fromEndpoint(endpoint);
  }

  factory NfcReceiverProxy.connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    NfcReceiverProxy p = new NfcReceiverProxy.unbound();
    s.connectToService(url, p, serviceName);
    return p;
  }


  void onReceivedNfcData(NfcData nfcData) {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _NfcReceiverOnReceivedNfcDataParams();
    params.nfcData = nfcData;
    ctrl.sendMessage(params,
        _nfcReceiverMethodOnReceivedNfcDataName);
  }
}

class _NfcReceiverStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<NfcReceiver> {
  NfcReceiver _impl;

  _NfcReceiverStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NfcReceiver impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcReceiverStubControl.fromHandle(
      core.MojoHandle handle, [NfcReceiver impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcReceiverStubControl.unbound([this._impl]) : super.unbound();



  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _nfcReceiverMethodOnReceivedNfcDataName:
        var params = _NfcReceiverOnReceivedNfcDataParams.deserialize(
            message.payload);
        _impl.onReceivedNfcData(params.nfcData);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  NfcReceiver get impl => _impl;
  set impl(NfcReceiver d) {
    if (d == null) {
      throw new core.MojoApiError("$this: Cannot set a null implementation");
    }
    if (isBound && (_impl == null)) {
      beginHandlingEvents();
    }
    _impl = d;
  }

  @override
  void bind(core.MojoMessagePipeEndpoint endpoint) {
    super.bind(endpoint);
    if (!isOpen && (_impl != null)) {
      beginHandlingEvents();
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcReceiverStubControl($superString)";
  }

  int get version => 0;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _NfcReceiverServiceDescription();
    }
    return _cachedServiceDescription;
  }
}

class NfcReceiverStub
    extends bindings.Stub<NfcReceiver>
    implements NfcReceiver {
  NfcReceiverStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NfcReceiver impl])
      : super(new _NfcReceiverStubControl.fromEndpoint(endpoint, impl));

  NfcReceiverStub.fromHandle(
      core.MojoHandle handle, [NfcReceiver impl])
      : super(new _NfcReceiverStubControl.fromHandle(handle, impl));

  NfcReceiverStub.unbound([NfcReceiver impl])
      : super(new _NfcReceiverStubControl.unbound(impl));

  static NfcReceiverStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcReceiverStub"));
    return new NfcReceiverStub.fromEndpoint(endpoint);
  }

  static service_describer.ServiceDescription get serviceDescription =>
      _NfcReceiverStubControl.serviceDescription;


  void onReceivedNfcData(NfcData nfcData) {
    return impl.onReceivedNfcData(nfcData);
  }
}

const int _nfcMethodTransmitOnNextConnectionName = 0;
const int _nfcMethodRegisterName = 1;
const int _nfcMethodUnregisterName = 2;

class _NfcServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class Nfc {
  static const String serviceName = "nfc::Nfc";
  dynamic transmitOnNextConnection(NfcData nfcData,Object transmission,[Function responseFactory = null]);
  void register();
  void unregister();
}

class _NfcProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl {
  _NfcProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _NfcProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _NfcProxyControl.unbound() : super.unbound();

  service_describer.ServiceDescription get serviceDescription =>
      new _NfcServiceDescription();

  String get serviceName => Nfc.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _nfcMethodTransmitOnNextConnectionName:
        var r = NfcTransmitOnNextConnectionResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcProxyControl($superString)";
  }
}

class NfcProxy
    extends bindings.Proxy
    implements Nfc {
  NfcProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _NfcProxyControl.fromEndpoint(endpoint));

  NfcProxy.fromHandle(core.MojoHandle handle)
      : super(new _NfcProxyControl.fromHandle(handle));

  NfcProxy.unbound()
      : super(new _NfcProxyControl.unbound());

  static NfcProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcProxy"));
    return new NfcProxy.fromEndpoint(endpoint);
  }

  factory NfcProxy.connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    NfcProxy p = new NfcProxy.unbound();
    s.connectToService(url, p, serviceName);
    return p;
  }


  dynamic transmitOnNextConnection(NfcData nfcData,Object transmission,[Function responseFactory = null]) {
    var params = new _NfcTransmitOnNextConnectionParams();
    params.nfcData = nfcData;
    params.transmission = transmission;
    return ctrl.sendMessageWithRequestId(
        params,
        _nfcMethodTransmitOnNextConnectionName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
  void register() {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _NfcRegisterParams();
    ctrl.sendMessage(params,
        _nfcMethodRegisterName);
  }
  void unregister() {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _NfcUnregisterParams();
    ctrl.sendMessage(params,
        _nfcMethodUnregisterName);
  }
}

class _NfcStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Nfc> {
  Nfc _impl;

  _NfcStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Nfc impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcStubControl.fromHandle(
      core.MojoHandle handle, [Nfc impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _NfcStubControl.unbound([this._impl]) : super.unbound();


  NfcTransmitOnNextConnectionResponseParams _nfcTransmitOnNextConnectionResponseParamsFactory(bool success) {
    var result = new NfcTransmitOnNextConnectionResponseParams();
    result.success = success;
    return result;
  }

  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _nfcMethodTransmitOnNextConnectionName:
        var params = _NfcTransmitOnNextConnectionParams.deserialize(
            message.payload);
        var response = _impl.transmitOnNextConnection(params.nfcData,params.transmission,_nfcTransmitOnNextConnectionResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _nfcMethodTransmitOnNextConnectionName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _nfcMethodTransmitOnNextConnectionName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      case _nfcMethodRegisterName:
        _impl.register();
        break;
      case _nfcMethodUnregisterName:
        _impl.unregister();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  Nfc get impl => _impl;
  set impl(Nfc d) {
    if (d == null) {
      throw new core.MojoApiError("$this: Cannot set a null implementation");
    }
    if (isBound && (_impl == null)) {
      beginHandlingEvents();
    }
    _impl = d;
  }

  @override
  void bind(core.MojoMessagePipeEndpoint endpoint) {
    super.bind(endpoint);
    if (!isOpen && (_impl != null)) {
      beginHandlingEvents();
    }
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_NfcStubControl($superString)";
  }

  int get version => 0;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _NfcServiceDescription();
    }
    return _cachedServiceDescription;
  }
}

class NfcStub
    extends bindings.Stub<Nfc>
    implements Nfc {
  NfcStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Nfc impl])
      : super(new _NfcStubControl.fromEndpoint(endpoint, impl));

  NfcStub.fromHandle(
      core.MojoHandle handle, [Nfc impl])
      : super(new _NfcStubControl.fromHandle(handle, impl));

  NfcStub.unbound([Nfc impl])
      : super(new _NfcStubControl.unbound(impl));

  static NfcStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NfcStub"));
    return new NfcStub.fromEndpoint(endpoint);
  }

  static service_describer.ServiceDescription get serviceDescription =>
      _NfcStubControl.serviceDescription;


  dynamic transmitOnNextConnection(NfcData nfcData,Object transmission,[Function responseFactory = null]) {
    return impl.transmitOnNextConnection(nfcData,transmission,responseFactory);
  }
  void register() {
    return impl.register();
  }
  void unregister() {
    return impl.unregister();
  }
}



