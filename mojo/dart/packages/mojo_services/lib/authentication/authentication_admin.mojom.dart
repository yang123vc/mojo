// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library authentication_admin_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;



class _AuthenticationAdminServiceGetOAuth2DeviceCodeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<String> scopes = null;

  _AuthenticationAdminServiceGetOAuth2DeviceCodeParams() : super(kVersions.last.size);

  _AuthenticationAdminServiceGetOAuth2DeviceCodeParams.init(
    List<String> this.scopes
  ) : super(kVersions.last.size);

  static _AuthenticationAdminServiceGetOAuth2DeviceCodeParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _AuthenticationAdminServiceGetOAuth2DeviceCodeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _AuthenticationAdminServiceGetOAuth2DeviceCodeParams result = new _AuthenticationAdminServiceGetOAuth2DeviceCodeParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.scopes = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.scopes[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_AuthenticationAdminServiceGetOAuth2DeviceCodeParams";
    String fieldName;
    try {
      fieldName = "scopes";
      if (scopes == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(scopes.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < scopes.length; ++i0) {
          encoder1.encodeString(scopes[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_AuthenticationAdminServiceGetOAuth2DeviceCodeParams("
           "scopes: $scopes" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["scopes"] = scopes;
    return map;
  }
}


class AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(40, 0)
  ];
  String verificationUrl = null;
  String deviceCode = null;
  String userCode = null;
  String error = null;

  AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams() : super(kVersions.last.size);

  AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams.init(
    String this.verificationUrl, 
    String this.deviceCode, 
    String this.userCode, 
    String this.error
  ) : super(kVersions.last.size);

  static AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams result = new AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.verificationUrl = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.deviceCode = decoder0.decodeString(16, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.userCode = decoder0.decodeString(24, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.error = decoder0.decodeString(32, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams";
    String fieldName;
    try {
      fieldName = "verificationUrl";
      encoder0.encodeString(verificationUrl, 8, true);
      fieldName = "deviceCode";
      encoder0.encodeString(deviceCode, 16, true);
      fieldName = "userCode";
      encoder0.encodeString(userCode, 24, true);
      fieldName = "error";
      encoder0.encodeString(error, 32, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams("
           "verificationUrl: $verificationUrl" ", "
           "deviceCode: $deviceCode" ", "
           "userCode: $userCode" ", "
           "error: $error" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["verificationUrl"] = verificationUrl;
    map["deviceCode"] = deviceCode;
    map["userCode"] = userCode;
    map["error"] = error;
    return map;
  }
}


class _AuthenticationAdminServiceAddAccountParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String deviceCode = null;

  _AuthenticationAdminServiceAddAccountParams() : super(kVersions.last.size);

  _AuthenticationAdminServiceAddAccountParams.init(
    String this.deviceCode
  ) : super(kVersions.last.size);

  static _AuthenticationAdminServiceAddAccountParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _AuthenticationAdminServiceAddAccountParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _AuthenticationAdminServiceAddAccountParams result = new _AuthenticationAdminServiceAddAccountParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.deviceCode = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_AuthenticationAdminServiceAddAccountParams";
    String fieldName;
    try {
      fieldName = "deviceCode";
      encoder0.encodeString(deviceCode, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_AuthenticationAdminServiceAddAccountParams("
           "deviceCode: $deviceCode" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["deviceCode"] = deviceCode;
    return map;
  }
}


class AuthenticationAdminServiceAddAccountResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String username = null;
  String error = null;

  AuthenticationAdminServiceAddAccountResponseParams() : super(kVersions.last.size);

  AuthenticationAdminServiceAddAccountResponseParams.init(
    String this.username, 
    String this.error
  ) : super(kVersions.last.size);

  static AuthenticationAdminServiceAddAccountResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static AuthenticationAdminServiceAddAccountResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationAdminServiceAddAccountResponseParams result = new AuthenticationAdminServiceAddAccountResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.username = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.error = decoder0.decodeString(16, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "AuthenticationAdminServiceAddAccountResponseParams";
    String fieldName;
    try {
      fieldName = "username";
      encoder0.encodeString(username, 8, true);
      fieldName = "error";
      encoder0.encodeString(error, 16, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "AuthenticationAdminServiceAddAccountResponseParams("
           "username: $username" ", "
           "error: $error" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["username"] = username;
    map["error"] = error;
    return map;
  }
}


class _AuthenticationAdminServiceGetAllUsersParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _AuthenticationAdminServiceGetAllUsersParams() : super(kVersions.last.size);

  _AuthenticationAdminServiceGetAllUsersParams.init(
  ) : super(kVersions.last.size);

  static _AuthenticationAdminServiceGetAllUsersParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _AuthenticationAdminServiceGetAllUsersParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _AuthenticationAdminServiceGetAllUsersParams result = new _AuthenticationAdminServiceGetAllUsersParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_AuthenticationAdminServiceGetAllUsersParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_AuthenticationAdminServiceGetAllUsersParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class AuthenticationAdminServiceGetAllUsersResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  List<String> usernames = null;
  String error = null;

  AuthenticationAdminServiceGetAllUsersResponseParams() : super(kVersions.last.size);

  AuthenticationAdminServiceGetAllUsersResponseParams.init(
    List<String> this.usernames, 
    String this.error
  ) : super(kVersions.last.size);

  static AuthenticationAdminServiceGetAllUsersResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static AuthenticationAdminServiceGetAllUsersResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    AuthenticationAdminServiceGetAllUsersResponseParams result = new AuthenticationAdminServiceGetAllUsersResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.usernames = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.usernames[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    if (mainDataHeader.version >= 0) {
      
      result.error = decoder0.decodeString(16, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "AuthenticationAdminServiceGetAllUsersResponseParams";
    String fieldName;
    try {
      fieldName = "usernames";
      if (usernames == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(usernames.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < usernames.length; ++i0) {
          encoder1.encodeString(usernames[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
      fieldName = "error";
      encoder0.encodeString(error, 16, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "AuthenticationAdminServiceGetAllUsersResponseParams("
           "usernames: $usernames" ", "
           "error: $error" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["usernames"] = usernames;
    map["error"] = error;
    return map;
  }
}

const int _authenticationAdminServiceMethodGetOAuth2DeviceCodeName = 0;
const int _authenticationAdminServiceMethodAddAccountName = 1;
const int _authenticationAdminServiceMethodGetAllUsersName = 2;

class _AuthenticationAdminServiceServiceDescription implements service_describer.ServiceDescription {
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

abstract class AuthenticationAdminService {
  static const String serviceName = "authentication::AuthenticationAdminService";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _AuthenticationAdminServiceServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static AuthenticationAdminServiceProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    AuthenticationAdminServiceProxy p = new AuthenticationAdminServiceProxy.unbound();
    String name = serviceName ?? AuthenticationAdminService.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void getOAuth2DeviceCode(List<String> scopes,void callback(String verificationUrl, String deviceCode, String userCode, String error));
  void addAccount(String deviceCode,void callback(String username, String error));
  void getAllUsers(void callback(List<String> usernames, String error));
}

abstract class AuthenticationAdminServiceInterface
    implements bindings.MojoInterface<AuthenticationAdminService>,
               AuthenticationAdminService {
  factory AuthenticationAdminServiceInterface([AuthenticationAdminService impl]) =>
      new AuthenticationAdminServiceStub.unbound(impl);

  factory AuthenticationAdminServiceInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [AuthenticationAdminService impl]) =>
      new AuthenticationAdminServiceStub.fromEndpoint(endpoint, impl);

  factory AuthenticationAdminServiceInterface.fromMock(
      AuthenticationAdminService mock) =>
      new AuthenticationAdminServiceProxy.fromMock(mock);
}

abstract class AuthenticationAdminServiceInterfaceRequest
    implements bindings.MojoInterface<AuthenticationAdminService>,
               AuthenticationAdminService {
  factory AuthenticationAdminServiceInterfaceRequest() =>
      new AuthenticationAdminServiceProxy.unbound();
}

class _AuthenticationAdminServiceProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<AuthenticationAdminService> {
  AuthenticationAdminService impl;

  _AuthenticationAdminServiceProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _AuthenticationAdminServiceProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _AuthenticationAdminServiceProxyControl.unbound() : super.unbound();

  String get serviceName => AuthenticationAdminService.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _authenticationAdminServiceMethodGetOAuth2DeviceCodeName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams.deserialize(
              message.payload);
          callback(r.verificationUrl , r.deviceCode , r.userCode , r.error );
        }
        break;
      case _authenticationAdminServiceMethodAddAccountName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = AuthenticationAdminServiceAddAccountResponseParams.deserialize(
              message.payload);
          callback(r.username , r.error );
        }
        break;
      case _authenticationAdminServiceMethodGetAllUsersName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = AuthenticationAdminServiceGetAllUsersResponseParams.deserialize(
              message.payload);
          callback(r.usernames , r.error );
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
    return "_AuthenticationAdminServiceProxyControl($superString)";
  }
}

class AuthenticationAdminServiceProxy
    extends bindings.Proxy<AuthenticationAdminService>
    implements AuthenticationAdminService,
               AuthenticationAdminServiceInterface,
               AuthenticationAdminServiceInterfaceRequest {
  AuthenticationAdminServiceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _AuthenticationAdminServiceProxyControl.fromEndpoint(endpoint));

  AuthenticationAdminServiceProxy.fromHandle(core.MojoHandle handle)
      : super(new _AuthenticationAdminServiceProxyControl.fromHandle(handle));

  AuthenticationAdminServiceProxy.unbound()
      : super(new _AuthenticationAdminServiceProxyControl.unbound());

  factory AuthenticationAdminServiceProxy.fromMock(AuthenticationAdminService mock) {
    AuthenticationAdminServiceProxy newMockedProxy =
        new AuthenticationAdminServiceProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static AuthenticationAdminServiceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticationAdminServiceProxy"));
    return new AuthenticationAdminServiceProxy.fromEndpoint(endpoint);
  }


  void getOAuth2DeviceCode(List<String> scopes,void callback(String verificationUrl, String deviceCode, String userCode, String error)) {
    if (impl != null) {
      impl.getOAuth2DeviceCode(scopes,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _AuthenticationAdminServiceGetOAuth2DeviceCodeParams();
    params.scopes = scopes;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((String verificationUrl, String deviceCode, String userCode, String error) {
        z.bindCallback(() {
          callback(verificationUrl, deviceCode, userCode, error);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _authenticationAdminServiceMethodGetOAuth2DeviceCodeName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void addAccount(String deviceCode,void callback(String username, String error)) {
    if (impl != null) {
      impl.addAccount(deviceCode,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _AuthenticationAdminServiceAddAccountParams();
    params.deviceCode = deviceCode;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((String username, String error) {
        z.bindCallback(() {
          callback(username, error);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _authenticationAdminServiceMethodAddAccountName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void getAllUsers(void callback(List<String> usernames, String error)) {
    if (impl != null) {
      impl.getAllUsers(callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _AuthenticationAdminServiceGetAllUsersParams();
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((List<String> usernames, String error) {
        z.bindCallback(() {
          callback(usernames, error);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _authenticationAdminServiceMethodGetAllUsersName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _AuthenticationAdminServiceStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<AuthenticationAdminService> {
  AuthenticationAdminService _impl;

  _AuthenticationAdminServiceStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [AuthenticationAdminService impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _AuthenticationAdminServiceStubControl.fromHandle(
      core.MojoHandle handle, [AuthenticationAdminService impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _AuthenticationAdminServiceStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => AuthenticationAdminService.serviceName;


  Function _authenticationAdminServiceGetOAuth2DeviceCodeResponseParamsResponder(
      int requestId) {
  return (String verificationUrl, String deviceCode, String userCode, String error) {
      var result = new AuthenticationAdminServiceGetOAuth2DeviceCodeResponseParams();
      result.verificationUrl = verificationUrl;
      result.deviceCode = deviceCode;
      result.userCode = userCode;
      result.error = error;
      sendResponse(buildResponseWithId(
          result,
          _authenticationAdminServiceMethodGetOAuth2DeviceCodeName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _authenticationAdminServiceAddAccountResponseParamsResponder(
      int requestId) {
  return (String username, String error) {
      var result = new AuthenticationAdminServiceAddAccountResponseParams();
      result.username = username;
      result.error = error;
      sendResponse(buildResponseWithId(
          result,
          _authenticationAdminServiceMethodAddAccountName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _authenticationAdminServiceGetAllUsersResponseParamsResponder(
      int requestId) {
  return (List<String> usernames, String error) {
      var result = new AuthenticationAdminServiceGetAllUsersResponseParams();
      result.usernames = usernames;
      result.error = error;
      sendResponse(buildResponseWithId(
          result,
          _authenticationAdminServiceMethodGetAllUsersName,
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
      case _authenticationAdminServiceMethodGetOAuth2DeviceCodeName:
        var params = _AuthenticationAdminServiceGetOAuth2DeviceCodeParams.deserialize(
            message.payload);
        _impl.getOAuth2DeviceCode(params.scopes, _authenticationAdminServiceGetOAuth2DeviceCodeResponseParamsResponder(message.header.requestId));
        break;
      case _authenticationAdminServiceMethodAddAccountName:
        var params = _AuthenticationAdminServiceAddAccountParams.deserialize(
            message.payload);
        _impl.addAccount(params.deviceCode, _authenticationAdminServiceAddAccountResponseParamsResponder(message.header.requestId));
        break;
      case _authenticationAdminServiceMethodGetAllUsersName:
        _impl.getAllUsers(_authenticationAdminServiceGetAllUsersResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  AuthenticationAdminService get impl => _impl;
  set impl(AuthenticationAdminService d) {
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
    return "_AuthenticationAdminServiceStubControl($superString)";
  }

  int get version => 0;
}

class AuthenticationAdminServiceStub
    extends bindings.Stub<AuthenticationAdminService>
    implements AuthenticationAdminService,
               AuthenticationAdminServiceInterface,
               AuthenticationAdminServiceInterfaceRequest {
  AuthenticationAdminServiceStub.unbound([AuthenticationAdminService impl])
      : super(new _AuthenticationAdminServiceStubControl.unbound(impl));

  AuthenticationAdminServiceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [AuthenticationAdminService impl])
      : super(new _AuthenticationAdminServiceStubControl.fromEndpoint(endpoint, impl));

  AuthenticationAdminServiceStub.fromHandle(
      core.MojoHandle handle, [AuthenticationAdminService impl])
      : super(new _AuthenticationAdminServiceStubControl.fromHandle(handle, impl));

  static AuthenticationAdminServiceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For AuthenticationAdminServiceStub"));
    return new AuthenticationAdminServiceStub.fromEndpoint(endpoint);
  }


  void getOAuth2DeviceCode(List<String> scopes,void callback(String verificationUrl, String deviceCode, String userCode, String error)) {
    return impl.getOAuth2DeviceCode(scopes,callback);
  }
  void addAccount(String deviceCode,void callback(String username, String error)) {
    return impl.addAccount(deviceCode,callback);
  }
  void getAllUsers(void callback(List<String> usernames, String error)) {
    return impl.getAllUsers(callback);
  }
}



