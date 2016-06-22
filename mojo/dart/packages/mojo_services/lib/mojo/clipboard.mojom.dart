// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library clipboard_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;



class _ClipboardGetSequenceNumberParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  ClipboardType clipboardType = null;

  _ClipboardGetSequenceNumberParams() : super(kVersions.last.size);

  _ClipboardGetSequenceNumberParams.init(
    ClipboardType this.clipboardType
  ) : super(kVersions.last.size);

  static _ClipboardGetSequenceNumberParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _ClipboardGetSequenceNumberParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ClipboardGetSequenceNumberParams result = new _ClipboardGetSequenceNumberParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.clipboardType = ClipboardType.decode(decoder0, 8);
        if (result.clipboardType == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable ClipboardType.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_ClipboardGetSequenceNumberParams";
    String fieldName;
    try {
      fieldName = "clipboardType";
      encoder0.encodeEnum(clipboardType, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_ClipboardGetSequenceNumberParams("
           "clipboardType: $clipboardType" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["clipboardType"] = clipboardType;
    return map;
  }
}


class ClipboardGetSequenceNumberResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int sequence = 0;

  ClipboardGetSequenceNumberResponseParams() : super(kVersions.last.size);

  ClipboardGetSequenceNumberResponseParams.init(
    int this.sequence
  ) : super(kVersions.last.size);

  static ClipboardGetSequenceNumberResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static ClipboardGetSequenceNumberResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ClipboardGetSequenceNumberResponseParams result = new ClipboardGetSequenceNumberResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.sequence = decoder0.decodeUint64(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "ClipboardGetSequenceNumberResponseParams";
    String fieldName;
    try {
      fieldName = "sequence";
      encoder0.encodeUint64(sequence, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "ClipboardGetSequenceNumberResponseParams("
           "sequence: $sequence" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["sequence"] = sequence;
    return map;
  }
}


class _ClipboardGetAvailableMimeTypesParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  ClipboardType clipboardTypes = null;

  _ClipboardGetAvailableMimeTypesParams() : super(kVersions.last.size);

  _ClipboardGetAvailableMimeTypesParams.init(
    ClipboardType this.clipboardTypes
  ) : super(kVersions.last.size);

  static _ClipboardGetAvailableMimeTypesParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _ClipboardGetAvailableMimeTypesParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ClipboardGetAvailableMimeTypesParams result = new _ClipboardGetAvailableMimeTypesParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.clipboardTypes = ClipboardType.decode(decoder0, 8);
        if (result.clipboardTypes == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable ClipboardType.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_ClipboardGetAvailableMimeTypesParams";
    String fieldName;
    try {
      fieldName = "clipboardTypes";
      encoder0.encodeEnum(clipboardTypes, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_ClipboardGetAvailableMimeTypesParams("
           "clipboardTypes: $clipboardTypes" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["clipboardTypes"] = clipboardTypes;
    return map;
  }
}


class ClipboardGetAvailableMimeTypesResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<String> types = null;

  ClipboardGetAvailableMimeTypesResponseParams() : super(kVersions.last.size);

  ClipboardGetAvailableMimeTypesResponseParams.init(
    List<String> this.types
  ) : super(kVersions.last.size);

  static ClipboardGetAvailableMimeTypesResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static ClipboardGetAvailableMimeTypesResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ClipboardGetAvailableMimeTypesResponseParams result = new ClipboardGetAvailableMimeTypesResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.types = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.types[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "ClipboardGetAvailableMimeTypesResponseParams";
    String fieldName;
    try {
      fieldName = "types";
      if (types == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(types.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < types.length; ++i0) {
          encoder1.encodeString(types[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "ClipboardGetAvailableMimeTypesResponseParams("
           "types: $types" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["types"] = types;
    return map;
  }
}


class _ClipboardReadMimeTypeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  ClipboardType clipboardType = null;
  String mimeType = null;

  _ClipboardReadMimeTypeParams() : super(kVersions.last.size);

  _ClipboardReadMimeTypeParams.init(
    ClipboardType this.clipboardType, 
    String this.mimeType
  ) : super(kVersions.last.size);

  static _ClipboardReadMimeTypeParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _ClipboardReadMimeTypeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ClipboardReadMimeTypeParams result = new _ClipboardReadMimeTypeParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.clipboardType = ClipboardType.decode(decoder0, 8);
        if (result.clipboardType == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable ClipboardType.');
        }
    }
    if (mainDataHeader.version >= 0) {
      
      result.mimeType = decoder0.decodeString(16, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_ClipboardReadMimeTypeParams";
    String fieldName;
    try {
      fieldName = "clipboardType";
      encoder0.encodeEnum(clipboardType, 8);
      fieldName = "mimeType";
      encoder0.encodeString(mimeType, 16, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_ClipboardReadMimeTypeParams("
           "clipboardType: $clipboardType" ", "
           "mimeType: $mimeType" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["clipboardType"] = clipboardType;
    map["mimeType"] = mimeType;
    return map;
  }
}


class ClipboardReadMimeTypeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<int> data = null;

  ClipboardReadMimeTypeResponseParams() : super(kVersions.last.size);

  ClipboardReadMimeTypeResponseParams.init(
    List<int> this.data
  ) : super(kVersions.last.size);

  static ClipboardReadMimeTypeResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static ClipboardReadMimeTypeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ClipboardReadMimeTypeResponseParams result = new ClipboardReadMimeTypeResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.data = decoder0.decodeUint8Array(8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "ClipboardReadMimeTypeResponseParams";
    String fieldName;
    try {
      fieldName = "data";
      encoder0.encodeUint8Array(data, 8, bindings.kArrayNullable, bindings.kUnspecifiedArrayLength);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "ClipboardReadMimeTypeResponseParams("
           "data: $data" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["data"] = data;
    return map;
  }
}


class _ClipboardWriteClipboardDataParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  ClipboardType clipboardType = null;
  Map<String, List<int>> data = null;

  _ClipboardWriteClipboardDataParams() : super(kVersions.last.size);

  _ClipboardWriteClipboardDataParams.init(
    ClipboardType this.clipboardType, 
    Map<String, List<int>> this.data
  ) : super(kVersions.last.size);

  static _ClipboardWriteClipboardDataParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _ClipboardWriteClipboardDataParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ClipboardWriteClipboardDataParams result = new _ClipboardWriteClipboardDataParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.clipboardType = ClipboardType.decode(decoder0, 8);
        if (result.clipboardType == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable ClipboardType.');
        }
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.data = null;
      } else {
        decoder1.decodeDataHeaderForMap();
        List<String> keys0;
        List<List<int>> values0;
        {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize, false);
          {
            var si2 = decoder2.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
            keys0 = new List<String>(si2.numElements);
            for (int i2 = 0; i2 < si2.numElements; ++i2) {
              
              keys0[i2] = decoder2.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i2, false);
            }
          }
        }
        {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, false);
          {
            var si2 = decoder2.decodeDataHeaderForPointerArray(keys0.length);
            values0 = new List<List<int>>(si2.numElements);
            for (int i2 = 0; i2 < si2.numElements; ++i2) {
              
              values0[i2] = decoder2.decodeUint8Array(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i2, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
            }
          }
        }
        result.data = new Map<String, List<int>>.fromIterables(
            keys0, values0);
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_ClipboardWriteClipboardDataParams";
    String fieldName;
    try {
      fieldName = "clipboardType";
      encoder0.encodeEnum(clipboardType, 8);
      fieldName = "data";
      if (data == null) {
        encoder0.encodeNullPointer(16, true);
      } else {
        var encoder1 = encoder0.encoderForMap(16);
        var keys0 = data.keys.toList();
        var values0 = data.values.toList();
        
        {
          var encoder2 = encoder1.encodePointerArray(keys0.length, bindings.ArrayDataHeader.kHeaderSize, bindings.kUnspecifiedArrayLength);
          for (int i1 = 0; i1 < keys0.length; ++i1) {
            encoder2.encodeString(keys0[i1], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          }
        }
        
        {
          var encoder2 = encoder1.encodePointerArray(values0.length, bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize, bindings.kUnspecifiedArrayLength);
          for (int i1 = 0; i1 < values0.length; ++i1) {
            encoder2.encodeUint8Array(values0[i1], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
          }
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_ClipboardWriteClipboardDataParams("
           "clipboardType: $clipboardType" ", "
           "data: $data" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["clipboardType"] = clipboardType;
    map["data"] = data;
    return map;
  }
}

const int _clipboardMethodGetSequenceNumberName = 0;
const int _clipboardMethodGetAvailableMimeTypesName = 1;
const int _clipboardMethodReadMimeTypeName = 2;
const int _clipboardMethodWriteClipboardDataName = 3;
  
class ClipboardType extends bindings.MojoEnum {
  static const ClipboardType copyPaste = const ClipboardType._(0);
  static const ClipboardType selection = const ClipboardType._(1);
  static const ClipboardType drag = const ClipboardType._(2);

  const ClipboardType._(int v) : super(v);

  static const Map<String, ClipboardType> valuesMap = const {
    "copyPaste": copyPaste,
    "selection": selection,
    "drag": drag,
  };
  static const List<ClipboardType> values = const [
    copyPaste,
    selection,
    drag,
  ];

  static ClipboardType valueOf(String name) => valuesMap[name];

  factory ClipboardType(int v) {
    switch (v) {
      case 0:
        return ClipboardType.copyPaste;
      case 1:
        return ClipboardType.selection;
      case 2:
        return ClipboardType.drag;
      default:
        return null;
    }
  }

  static ClipboardType decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    ClipboardType result = new ClipboardType(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum ClipboardType.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case copyPaste:
        return 'ClipboardType.copyPaste';
      case selection:
        return 'ClipboardType.selection';
      case drag:
        return 'ClipboardType.drag';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class _ClipboardServiceDescription implements service_describer.ServiceDescription {
  void getTopLevelInterface(Function responder) {
    responder(null);
  }

  void getTypeDefinition(String typeKey, Function responder) {
    responder(null);
  }

  void getAllTypeDefinitions(Function responder) {
    responder(null);
  }
}

abstract class Clipboard {
  static const String serviceName = "mojo::Clipboard";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _ClipboardServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static ClipboardProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    ClipboardProxy p = new ClipboardProxy.unbound();
    String name = serviceName ?? Clipboard.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void getSequenceNumber(ClipboardType clipboardType,void callback(int sequence));
  void getAvailableMimeTypes(ClipboardType clipboardTypes,void callback(List<String> types));
  void readMimeType(ClipboardType clipboardType,String mimeType,void callback(List<int> data));
  void writeClipboardData(ClipboardType clipboardType, Map<String, List<int>> data);
  static const String mimeTypeText = "text/plain";
  static const String mimeTypeHtml = "text/html";
  static const String mimeTypeUrl = "text/url";
}

abstract class ClipboardInterface
    implements bindings.MojoInterface<Clipboard>,
               Clipboard {
  factory ClipboardInterface([Clipboard impl]) =>
      new ClipboardStub.unbound(impl);

  factory ClipboardInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Clipboard impl]) =>
      new ClipboardStub.fromEndpoint(endpoint, impl);

  factory ClipboardInterface.fromMock(
      Clipboard mock) =>
      new ClipboardProxy.fromMock(mock);
}

abstract class ClipboardInterfaceRequest
    implements bindings.MojoInterface<Clipboard>,
               Clipboard {
  factory ClipboardInterfaceRequest() =>
      new ClipboardProxy.unbound();
}

class _ClipboardProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Clipboard> {
  Clipboard impl;

  _ClipboardProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _ClipboardProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _ClipboardProxyControl.unbound() : super.unbound();

  String get serviceName => Clipboard.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _clipboardMethodGetSequenceNumberName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = ClipboardGetSequenceNumberResponseParams.deserialize(
              message.payload);
          callback(r.sequence );
        }
        break;
      case _clipboardMethodGetAvailableMimeTypesName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = ClipboardGetAvailableMimeTypesResponseParams.deserialize(
              message.payload);
          callback(r.types );
        }
        break;
      case _clipboardMethodReadMimeTypeName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = ClipboardReadMimeTypeResponseParams.deserialize(
              message.payload);
          callback(r.data );
        }
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
    return "_ClipboardProxyControl($superString)";
  }
}

class ClipboardProxy
    extends bindings.Proxy<Clipboard>
    implements Clipboard,
               ClipboardInterface,
               ClipboardInterfaceRequest {
  ClipboardProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _ClipboardProxyControl.fromEndpoint(endpoint));

  ClipboardProxy.fromHandle(core.MojoHandle handle)
      : super(new _ClipboardProxyControl.fromHandle(handle));

  ClipboardProxy.unbound()
      : super(new _ClipboardProxyControl.unbound());

  factory ClipboardProxy.fromMock(Clipboard mock) {
    ClipboardProxy newMockedProxy =
        new ClipboardProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static ClipboardProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ClipboardProxy"));
    return new ClipboardProxy.fromEndpoint(endpoint);
  }


  void getSequenceNumber(ClipboardType clipboardType,void callback(int sequence)) {
    if (impl != null) {
      impl.getSequenceNumber(clipboardType,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _ClipboardGetSequenceNumberParams();
    params.clipboardType = clipboardType;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((int sequence) {
        z.bindCallback(() {
          callback(sequence);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _clipboardMethodGetSequenceNumberName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void getAvailableMimeTypes(ClipboardType clipboardTypes,void callback(List<String> types)) {
    if (impl != null) {
      impl.getAvailableMimeTypes(clipboardTypes,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _ClipboardGetAvailableMimeTypesParams();
    params.clipboardTypes = clipboardTypes;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((List<String> types) {
        z.bindCallback(() {
          callback(types);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _clipboardMethodGetAvailableMimeTypesName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void readMimeType(ClipboardType clipboardType,String mimeType,void callback(List<int> data)) {
    if (impl != null) {
      impl.readMimeType(clipboardType,mimeType,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _ClipboardReadMimeTypeParams();
    params.clipboardType = clipboardType;
    params.mimeType = mimeType;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((List<int> data) {
        z.bindCallback(() {
          callback(data);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _clipboardMethodReadMimeTypeName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void writeClipboardData(ClipboardType clipboardType, Map<String, List<int>> data) {
    if (impl != null) {
      impl.writeClipboardData(clipboardType, data);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _ClipboardWriteClipboardDataParams();
    params.clipboardType = clipboardType;
    params.data = data;
    ctrl.sendMessage(params,
        _clipboardMethodWriteClipboardDataName);
  }
}

class _ClipboardStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Clipboard> {
  Clipboard _impl;

  _ClipboardStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Clipboard impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _ClipboardStubControl.fromHandle(
      core.MojoHandle handle, [Clipboard impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _ClipboardStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Clipboard.serviceName;


  Function _clipboardGetSequenceNumberResponseParamsResponder(
      int requestId) {
  return (int sequence) {
      var result = new ClipboardGetSequenceNumberResponseParams();
      result.sequence = sequence;
      sendResponse(buildResponseWithId(
          result,
          _clipboardMethodGetSequenceNumberName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _clipboardGetAvailableMimeTypesResponseParamsResponder(
      int requestId) {
  return (List<String> types) {
      var result = new ClipboardGetAvailableMimeTypesResponseParams();
      result.types = types;
      sendResponse(buildResponseWithId(
          result,
          _clipboardMethodGetAvailableMimeTypesName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _clipboardReadMimeTypeResponseParamsResponder(
      int requestId) {
  return (List<int> data) {
      var result = new ClipboardReadMimeTypeResponseParams();
      result.data = data;
      sendResponse(buildResponseWithId(
          result,
          _clipboardMethodReadMimeTypeName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }

  void handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      bindings.ControlMessageHandler.handleMessage(
          this, 0, message);
      return;
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _clipboardMethodGetSequenceNumberName:
        var params = _ClipboardGetSequenceNumberParams.deserialize(
            message.payload);
        _impl.getSequenceNumber(params.clipboardType, _clipboardGetSequenceNumberResponseParamsResponder(message.header.requestId));
        break;
      case _clipboardMethodGetAvailableMimeTypesName:
        var params = _ClipboardGetAvailableMimeTypesParams.deserialize(
            message.payload);
        _impl.getAvailableMimeTypes(params.clipboardTypes, _clipboardGetAvailableMimeTypesResponseParamsResponder(message.header.requestId));
        break;
      case _clipboardMethodReadMimeTypeName:
        var params = _ClipboardReadMimeTypeParams.deserialize(
            message.payload);
        _impl.readMimeType(params.clipboardType, params.mimeType, _clipboardReadMimeTypeResponseParamsResponder(message.header.requestId));
        break;
      case _clipboardMethodWriteClipboardDataName:
        var params = _ClipboardWriteClipboardDataParams.deserialize(
            message.payload);
        _impl.writeClipboardData(params.clipboardType, params.data);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  Clipboard get impl => _impl;
  set impl(Clipboard d) {
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
    return "_ClipboardStubControl($superString)";
  }

  int get version => 0;
}

class ClipboardStub
    extends bindings.Stub<Clipboard>
    implements Clipboard,
               ClipboardInterface,
               ClipboardInterfaceRequest {
  ClipboardStub.unbound([Clipboard impl])
      : super(new _ClipboardStubControl.unbound(impl));

  ClipboardStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Clipboard impl])
      : super(new _ClipboardStubControl.fromEndpoint(endpoint, impl));

  ClipboardStub.fromHandle(
      core.MojoHandle handle, [Clipboard impl])
      : super(new _ClipboardStubControl.fromHandle(handle, impl));

  static ClipboardStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ClipboardStub"));
    return new ClipboardStub.fromEndpoint(endpoint);
  }


  void getSequenceNumber(ClipboardType clipboardType,void callback(int sequence)) {
    return impl.getSequenceNumber(clipboardType,callback);
  }
  void getAvailableMimeTypes(ClipboardType clipboardTypes,void callback(List<String> types)) {
    return impl.getAvailableMimeTypes(clipboardTypes,callback);
  }
  void readMimeType(ClipboardType clipboardType,String mimeType,void callback(List<int> data)) {
    return impl.readMimeType(clipboardType,mimeType,callback);
  }
  void writeClipboardData(ClipboardType clipboardType, Map<String, List<int>> data) {
    return impl.writeClipboardData(clipboardType, data);
  }
}



