// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library http_server_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/http_server/http_request.mojom.dart' as http_request_mojom;
import 'package:mojo_services/http_server/http_response.mojom.dart' as http_response_mojom;



class _HttpServerSetHandlerParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String pattern = null;
  HttpHandlerInterface handler = null;

  _HttpServerSetHandlerParams() : super(kVersions.last.size);

  _HttpServerSetHandlerParams.init(
    String this.pattern, 
    HttpHandlerInterface this.handler
  ) : super(kVersions.last.size);

  static _HttpServerSetHandlerParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _HttpServerSetHandlerParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _HttpServerSetHandlerParams result = new _HttpServerSetHandlerParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.pattern = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      result.handler = decoder0.decodeServiceInterface(16, false, HttpHandlerProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_HttpServerSetHandlerParams";
    String fieldName;
    try {
      fieldName = "pattern";
      encoder0.encodeString(pattern, 8, false);
      fieldName = "handler";
      encoder0.encodeInterface(handler, 16, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_HttpServerSetHandlerParams("
           "pattern: $pattern" ", "
           "handler: $handler" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class HttpServerSetHandlerResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool success = false;

  HttpServerSetHandlerResponseParams() : super(kVersions.last.size);

  HttpServerSetHandlerResponseParams.init(
    bool this.success
  ) : super(kVersions.last.size);

  static HttpServerSetHandlerResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static HttpServerSetHandlerResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpServerSetHandlerResponseParams result = new HttpServerSetHandlerResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.success = decoder0.decodeBool(8, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "HttpServerSetHandlerResponseParams";
    String fieldName;
    try {
      fieldName = "success";
      encoder0.encodeBool(success, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "HttpServerSetHandlerResponseParams("
           "success: $success" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["success"] = success;
    return map;
  }
}


class _HttpServerGetPortParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _HttpServerGetPortParams() : super(kVersions.last.size);

  _HttpServerGetPortParams.init(
  ) : super(kVersions.last.size);

  static _HttpServerGetPortParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _HttpServerGetPortParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _HttpServerGetPortParams result = new _HttpServerGetPortParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_HttpServerGetPortParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_HttpServerGetPortParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class HttpServerGetPortResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int port = 0;

  HttpServerGetPortResponseParams() : super(kVersions.last.size);

  HttpServerGetPortResponseParams.init(
    int this.port
  ) : super(kVersions.last.size);

  static HttpServerGetPortResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static HttpServerGetPortResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpServerGetPortResponseParams result = new HttpServerGetPortResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.port = decoder0.decodeUint16(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "HttpServerGetPortResponseParams";
    String fieldName;
    try {
      fieldName = "port";
      encoder0.encodeUint16(port, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "HttpServerGetPortResponseParams("
           "port: $port" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["port"] = port;
    return map;
  }
}


class _HttpHandlerHandleRequestParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  http_request_mojom.HttpRequest request = null;

  _HttpHandlerHandleRequestParams() : super(kVersions.last.size);

  _HttpHandlerHandleRequestParams.init(
    http_request_mojom.HttpRequest this.request
  ) : super(kVersions.last.size);

  static _HttpHandlerHandleRequestParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _HttpHandlerHandleRequestParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _HttpHandlerHandleRequestParams result = new _HttpHandlerHandleRequestParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.request = http_request_mojom.HttpRequest.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_HttpHandlerHandleRequestParams";
    String fieldName;
    try {
      fieldName = "request";
      encoder0.encodeStruct(request, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_HttpHandlerHandleRequestParams("
           "request: $request" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class HttpHandlerHandleRequestResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  http_response_mojom.HttpResponse response = null;

  HttpHandlerHandleRequestResponseParams() : super(kVersions.last.size);

  HttpHandlerHandleRequestResponseParams.init(
    http_response_mojom.HttpResponse this.response
  ) : super(kVersions.last.size);

  static HttpHandlerHandleRequestResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static HttpHandlerHandleRequestResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    HttpHandlerHandleRequestResponseParams result = new HttpHandlerHandleRequestResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.response = http_response_mojom.HttpResponse.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "HttpHandlerHandleRequestResponseParams";
    String fieldName;
    try {
      fieldName = "response";
      encoder0.encodeStruct(response, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "HttpHandlerHandleRequestResponseParams("
           "response: $response" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}

const int _httpServerMethodSetHandlerName = 0;
const int _httpServerMethodGetPortName = 1;

class _HttpServerServiceDescription implements service_describer.ServiceDescription {
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

abstract class HttpServer {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _HttpServerServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static HttpServerProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    HttpServerProxy p = new HttpServerProxy.unbound();
    String name = serviceName ?? HttpServer.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void setHandler(String pattern,HttpHandlerInterface handler,void callback(bool success));
  void getPort(void callback(int port));
}

abstract class HttpServerInterface
    implements bindings.MojoInterface<HttpServer>,
               HttpServer {
  factory HttpServerInterface([HttpServer impl]) =>
      new HttpServerStub.unbound(impl);

  factory HttpServerInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [HttpServer impl]) =>
      new HttpServerStub.fromEndpoint(endpoint, impl);

  factory HttpServerInterface.fromMock(
      HttpServer mock) =>
      new HttpServerProxy.fromMock(mock);
}

abstract class HttpServerInterfaceRequest
    implements bindings.MojoInterface<HttpServer>,
               HttpServer {
  factory HttpServerInterfaceRequest() =>
      new HttpServerProxy.unbound();
}

class _HttpServerProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<HttpServer> {
  HttpServer impl;

  _HttpServerProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _HttpServerProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _HttpServerProxyControl.unbound() : super.unbound();

  String get serviceName => HttpServer.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _httpServerMethodSetHandlerName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = HttpServerSetHandlerResponseParams.deserialize(
              message.payload);
          callback(r.success );
        }
        break;
      case _httpServerMethodGetPortName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = HttpServerGetPortResponseParams.deserialize(
              message.payload);
          callback(r.port );
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
    return "_HttpServerProxyControl($superString)";
  }
}

class HttpServerProxy
    extends bindings.Proxy<HttpServer>
    implements HttpServer,
               HttpServerInterface,
               HttpServerInterfaceRequest {
  HttpServerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _HttpServerProxyControl.fromEndpoint(endpoint));

  HttpServerProxy.fromHandle(core.MojoHandle handle)
      : super(new _HttpServerProxyControl.fromHandle(handle));

  HttpServerProxy.unbound()
      : super(new _HttpServerProxyControl.unbound());

  factory HttpServerProxy.fromMock(HttpServer mock) {
    HttpServerProxy newMockedProxy =
        new HttpServerProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static HttpServerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HttpServerProxy"));
    return new HttpServerProxy.fromEndpoint(endpoint);
  }


  void setHandler(String pattern,HttpHandlerInterface handler,void callback(bool success)) {
    if (impl != null) {
      impl.setHandler(pattern,handler,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _HttpServerSetHandlerParams();
    params.pattern = pattern;
    params.handler = handler;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((bool success) {
        z.bindCallback(() {
          callback(success);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _httpServerMethodSetHandlerName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void getPort(void callback(int port)) {
    if (impl != null) {
      impl.getPort(callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _HttpServerGetPortParams();
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((int port) {
        z.bindCallback(() {
          callback(port);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _httpServerMethodGetPortName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _HttpServerStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<HttpServer> {
  HttpServer _impl;

  _HttpServerStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HttpServer impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _HttpServerStubControl.fromHandle(
      core.MojoHandle handle, [HttpServer impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _HttpServerStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => HttpServer.serviceName;


  Function _httpServerSetHandlerResponseParamsResponder(
      int requestId) {
  return (bool success) {
      var result = new HttpServerSetHandlerResponseParams();
      result.success = success;
      sendResponse(buildResponseWithId(
          result,
          _httpServerMethodSetHandlerName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _httpServerGetPortResponseParamsResponder(
      int requestId) {
  return (int port) {
      var result = new HttpServerGetPortResponseParams();
      result.port = port;
      sendResponse(buildResponseWithId(
          result,
          _httpServerMethodGetPortName,
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
      case _httpServerMethodSetHandlerName:
        var params = _HttpServerSetHandlerParams.deserialize(
            message.payload);
        _impl.setHandler(params.pattern, params.handler, _httpServerSetHandlerResponseParamsResponder(message.header.requestId));
        break;
      case _httpServerMethodGetPortName:
        _impl.getPort(_httpServerGetPortResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  HttpServer get impl => _impl;
  set impl(HttpServer d) {
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
    return "_HttpServerStubControl($superString)";
  }

  int get version => 0;
}

class HttpServerStub
    extends bindings.Stub<HttpServer>
    implements HttpServer,
               HttpServerInterface,
               HttpServerInterfaceRequest {
  HttpServerStub.unbound([HttpServer impl])
      : super(new _HttpServerStubControl.unbound(impl));

  HttpServerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HttpServer impl])
      : super(new _HttpServerStubControl.fromEndpoint(endpoint, impl));

  HttpServerStub.fromHandle(
      core.MojoHandle handle, [HttpServer impl])
      : super(new _HttpServerStubControl.fromHandle(handle, impl));

  static HttpServerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HttpServerStub"));
    return new HttpServerStub.fromEndpoint(endpoint);
  }


  void setHandler(String pattern,HttpHandlerInterface handler,void callback(bool success)) {
    return impl.setHandler(pattern,handler,callback);
  }
  void getPort(void callback(int port)) {
    return impl.getPort(callback);
  }
}

const int _httpHandlerMethodHandleRequestName = 0;

class _HttpHandlerServiceDescription implements service_describer.ServiceDescription {
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

abstract class HttpHandler {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _HttpHandlerServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static HttpHandlerProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    HttpHandlerProxy p = new HttpHandlerProxy.unbound();
    String name = serviceName ?? HttpHandler.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void handleRequest(http_request_mojom.HttpRequest request,void callback(http_response_mojom.HttpResponse response));
}

abstract class HttpHandlerInterface
    implements bindings.MojoInterface<HttpHandler>,
               HttpHandler {
  factory HttpHandlerInterface([HttpHandler impl]) =>
      new HttpHandlerStub.unbound(impl);

  factory HttpHandlerInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [HttpHandler impl]) =>
      new HttpHandlerStub.fromEndpoint(endpoint, impl);

  factory HttpHandlerInterface.fromMock(
      HttpHandler mock) =>
      new HttpHandlerProxy.fromMock(mock);
}

abstract class HttpHandlerInterfaceRequest
    implements bindings.MojoInterface<HttpHandler>,
               HttpHandler {
  factory HttpHandlerInterfaceRequest() =>
      new HttpHandlerProxy.unbound();
}

class _HttpHandlerProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<HttpHandler> {
  HttpHandler impl;

  _HttpHandlerProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _HttpHandlerProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _HttpHandlerProxyControl.unbound() : super.unbound();

  String get serviceName => HttpHandler.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _httpHandlerMethodHandleRequestName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = HttpHandlerHandleRequestResponseParams.deserialize(
              message.payload);
          callback(r.response );
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
    return "_HttpHandlerProxyControl($superString)";
  }
}

class HttpHandlerProxy
    extends bindings.Proxy<HttpHandler>
    implements HttpHandler,
               HttpHandlerInterface,
               HttpHandlerInterfaceRequest {
  HttpHandlerProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _HttpHandlerProxyControl.fromEndpoint(endpoint));

  HttpHandlerProxy.fromHandle(core.MojoHandle handle)
      : super(new _HttpHandlerProxyControl.fromHandle(handle));

  HttpHandlerProxy.unbound()
      : super(new _HttpHandlerProxyControl.unbound());

  factory HttpHandlerProxy.fromMock(HttpHandler mock) {
    HttpHandlerProxy newMockedProxy =
        new HttpHandlerProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static HttpHandlerProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HttpHandlerProxy"));
    return new HttpHandlerProxy.fromEndpoint(endpoint);
  }


  void handleRequest(http_request_mojom.HttpRequest request,void callback(http_response_mojom.HttpResponse response)) {
    if (impl != null) {
      impl.handleRequest(request,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _HttpHandlerHandleRequestParams();
    params.request = request;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((http_response_mojom.HttpResponse response) {
        z.bindCallback(() {
          callback(response);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _httpHandlerMethodHandleRequestName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _HttpHandlerStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<HttpHandler> {
  HttpHandler _impl;

  _HttpHandlerStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HttpHandler impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _HttpHandlerStubControl.fromHandle(
      core.MojoHandle handle, [HttpHandler impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _HttpHandlerStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => HttpHandler.serviceName;


  Function _httpHandlerHandleRequestResponseParamsResponder(
      int requestId) {
  return (http_response_mojom.HttpResponse response) {
      var result = new HttpHandlerHandleRequestResponseParams();
      result.response = response;
      sendResponse(buildResponseWithId(
          result,
          _httpHandlerMethodHandleRequestName,
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
      case _httpHandlerMethodHandleRequestName:
        var params = _HttpHandlerHandleRequestParams.deserialize(
            message.payload);
        _impl.handleRequest(params.request, _httpHandlerHandleRequestResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  HttpHandler get impl => _impl;
  set impl(HttpHandler d) {
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
    return "_HttpHandlerStubControl($superString)";
  }

  int get version => 0;
}

class HttpHandlerStub
    extends bindings.Stub<HttpHandler>
    implements HttpHandler,
               HttpHandlerInterface,
               HttpHandlerInterfaceRequest {
  HttpHandlerStub.unbound([HttpHandler impl])
      : super(new _HttpHandlerStubControl.unbound(impl));

  HttpHandlerStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [HttpHandler impl])
      : super(new _HttpHandlerStubControl.fromEndpoint(endpoint, impl));

  HttpHandlerStub.fromHandle(
      core.MojoHandle handle, [HttpHandler impl])
      : super(new _HttpHandlerStubControl.fromHandle(handle, impl));

  static HttpHandlerStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For HttpHandlerStub"));
    return new HttpHandlerStub.fromEndpoint(endpoint);
  }


  void handleRequest(http_request_mojom.HttpRequest request,void callback(http_response_mojom.HttpResponse response)) {
    return impl.handleRequest(request,callback);
  }
}



