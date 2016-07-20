// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library host_resolver_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo/mojo/network_error.mojom.dart' as network_error_mojom;
import 'package:mojo_services/mojo/net_address.mojom.dart' as net_address_mojom;



class _HostResolverGetHostAddressesParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String host = null;
  net_address_mojom.NetAddressFamily family = null;

  _HostResolverGetHostAddressesParams() : super(kVersions.last.size);

  _HostResolverGetHostAddressesParams.init(
    String this.host, 
    net_address_mojom.NetAddressFamily this.family
  ) : super(kVersions.last.size);

  static _HostResolverGetHostAddressesParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _HostResolverGetHostAddressesParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _HostResolverGetHostAddressesParams result = new _HostResolverGetHostAddressesParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.host = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
        result.family = net_address_mojom.NetAddressFamily.decode(decoder0, 16);
        if (result.family == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable net_address_mojom.NetAddressFamily.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_HostResolverGetHostAddressesParams";
    String fieldName;
    try {
      fieldName = "host";
      encoder0.encodeString(host, 8, false);
      fieldName = "family";
      encoder0.encodeEnum(family, 16);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_HostResolverGetHostAddressesParams("
           "host: $host" ", "
           "family: $family" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["host"] = host;
    map["family"] = family;
    return map;
  }
}


class HostResolverGetHostAddressesResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  network_error_mojom.NetworkError result = null;
  List<net_address_mojom.NetAddress> addresses = null;

  HostResolverGetHostAddressesResponseParams() : super(kVersions.last.size);

  HostResolverGetHostAddressesResponseParams.init(
    network_error_mojom.NetworkError this.result, 
    List<net_address_mojom.NetAddress> this.addresses
  ) : super(kVersions.last.size);

  static HostResolverGetHostAddressesResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static HostResolverGetHostAddressesResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HostResolverGetHostAddressesResponseParams result = new HostResolverGetHostAddressesResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.result = network_error_mojom.NetworkError.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.addresses = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.addresses = new List<net_address_mojom.NetAddress>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.addresses[i1] = net_address_mojom.NetAddress.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "HostResolverGetHostAddressesResponseParams";
    String fieldName;
    try {
      fieldName = "result";
      encoder0.encodeStruct(result, 8, false);
      fieldName = "addresses";
      if (addresses == null) {
        encoder0.encodeNullPointer(16, true);
      } else {
        var encoder1 = encoder0.encodePointerArray(addresses.length, 16, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < addresses.length; ++i0) {
          encoder1.encodeStruct(addresses[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "HostResolverGetHostAddressesResponseParams("
           "result: $result" ", "
           "addresses: $addresses" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["result"] = result;
    map["addresses"] = addresses;
    return map;
  }
}

const int _hostResolverMethodGetHostAddressesName = 0;

class _HostResolverServiceDescription implements service_describer.ServiceDescription {
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

abstract class HostResolver {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _HostResolverServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static HostResolverProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    HostResolverProxy p = new HostResolverProxy.unbound();
    String name = serviceName ?? HostResolver.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void getHostAddresses(String host,net_address_mojom.NetAddressFamily family,void callback(network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses));
}

abstract class HostResolverInterface
    implements bindings.MojoInterface<HostResolver>,
               HostResolver {
  factory HostResolverInterface([HostResolver impl]) =>
      new HostResolverStub.unbound(impl);

  factory HostResolverInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [HostResolver impl]) =>
      new HostResolverStub.fromEndpoint(endpoint, impl);

  factory HostResolverInterface.fromMock(
      HostResolver mock) =>
      new HostResolverProxy.fromMock(mock);
}

abstract class HostResolverInterfaceRequest
    implements bindings.MojoInterface<HostResolver>,
               HostResolver {
  factory HostResolverInterfaceRequest() =>
      new HostResolverProxy.unbound();
}

class _HostResolverProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<HostResolver> {
  HostResolver impl;

  _HostResolverProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _HostResolverProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _HostResolverProxyControl.unbound() : super.unbound();

  String get serviceName => HostResolver.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _hostResolverMethodGetHostAddressesName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = HostResolverGetHostAddressesResponseParams.deserialize(
              message.payload);
          callback(r.result , r.addresses );
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
    return "_HostResolverProxyControl($superString)";
  }
}

class HostResolverProxy
    extends bindings.Proxy<HostResolver>
    implements HostResolver,
               HostResolverInterface,
               HostResolverInterfaceRequest {
  HostResolverProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _HostResolverProxyControl.fromEndpoint(endpoint));

  HostResolverProxy.fromHandle(core.MojoHandle handle)
      : super(new _HostResolverProxyControl.fromHandle(handle));

  HostResolverProxy.unbound()
      : super(new _HostResolverProxyControl.unbound());

  factory HostResolverProxy.fromMock(HostResolver mock) {
    HostResolverProxy newMockedProxy =
        new HostResolverProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static HostResolverProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HostResolverProxy"));
    return new HostResolverProxy.fromEndpoint(endpoint);
  }


  void getHostAddresses(String host,net_address_mojom.NetAddressFamily family,void callback(network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses)) {
    if (impl != null) {
      impl.getHostAddresses(host,family,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _HostResolverGetHostAddressesParams();
    params.host = host;
    params.family = family;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses) {
        z.bindCallback(() {
          callback(result, addresses);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _hostResolverMethodGetHostAddressesName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _HostResolverStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<HostResolver> {
  HostResolver _impl;

  _HostResolverStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HostResolver impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _HostResolverStubControl.fromHandle(
      core.MojoHandle handle, [HostResolver impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _HostResolverStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => HostResolver.serviceName;


  Function _hostResolverGetHostAddressesResponseParamsResponder(
      int requestId) {
  return (network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses) {
      var result = new HostResolverGetHostAddressesResponseParams();
      result.result = result;
      result.addresses = addresses;
      sendResponse(buildResponseWithId(
          result,
          _hostResolverMethodGetHostAddressesName,
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
      case _hostResolverMethodGetHostAddressesName:
        var params = _HostResolverGetHostAddressesParams.deserialize(
            message.payload);
        _impl.getHostAddresses(params.host, params.family, _hostResolverGetHostAddressesResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  HostResolver get impl => _impl;
  set impl(HostResolver d) {
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
    return "_HostResolverStubControl($superString)";
  }

  int get version => 0;
}

class HostResolverStub
    extends bindings.Stub<HostResolver>
    implements HostResolver,
               HostResolverInterface,
               HostResolverInterfaceRequest {
  HostResolverStub.unbound([HostResolver impl])
      : super(new _HostResolverStubControl.unbound(impl));

  HostResolverStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HostResolver impl])
      : super(new _HostResolverStubControl.fromEndpoint(endpoint, impl));

  HostResolverStub.fromHandle(
      core.MojoHandle handle, [HostResolver impl])
      : super(new _HostResolverStubControl.fromHandle(handle, impl));

  static HostResolverStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HostResolverStub"));
    return new HostResolverStub.fromEndpoint(endpoint);
  }


  void getHostAddresses(String host,net_address_mojom.NetAddressFamily family,void callback(network_error_mojom.NetworkError result, List<net_address_mojom.NetAddress> addresses)) {
    return impl.getHostAddresses(host,family,callback);
  }
}



