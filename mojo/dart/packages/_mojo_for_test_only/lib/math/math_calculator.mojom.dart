// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library math_calculator_mojom;
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/mojom_types.mojom.dart' as mojom_types;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;



class _CalculatorClearParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _CalculatorClearParams() : super(kVersions.last.size);

  _CalculatorClearParams.init(
  ) : super(kVersions.last.size);

  static _CalculatorClearParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CalculatorClearParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CalculatorClearParams result = new _CalculatorClearParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CalculatorClearParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CalculatorClearParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class CalculatorClearResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double value = 0.0;

  CalculatorClearResponseParams() : super(kVersions.last.size);

  CalculatorClearResponseParams.init(
    double this.value
  ) : super(kVersions.last.size);

  static CalculatorClearResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static CalculatorClearResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CalculatorClearResponseParams result = new CalculatorClearResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeDouble(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "CalculatorClearResponseParams";
    String fieldName;
    try {
      fieldName = "value";
      encoder0.encodeDouble(value, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "CalculatorClearResponseParams("
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["value"] = value;
    return map;
  }
}


class _CalculatorAddParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double value = 0.0;

  _CalculatorAddParams() : super(kVersions.last.size);

  _CalculatorAddParams.init(
    double this.value
  ) : super(kVersions.last.size);

  static _CalculatorAddParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CalculatorAddParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CalculatorAddParams result = new _CalculatorAddParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeDouble(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CalculatorAddParams";
    String fieldName;
    try {
      fieldName = "value";
      encoder0.encodeDouble(value, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CalculatorAddParams("
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["value"] = value;
    return map;
  }
}


class CalculatorAddResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double value = 0.0;

  CalculatorAddResponseParams() : super(kVersions.last.size);

  CalculatorAddResponseParams.init(
    double this.value
  ) : super(kVersions.last.size);

  static CalculatorAddResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static CalculatorAddResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CalculatorAddResponseParams result = new CalculatorAddResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeDouble(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "CalculatorAddResponseParams";
    String fieldName;
    try {
      fieldName = "value";
      encoder0.encodeDouble(value, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "CalculatorAddResponseParams("
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["value"] = value;
    return map;
  }
}


class _CalculatorMultiplyParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double value = 0.0;

  _CalculatorMultiplyParams() : super(kVersions.last.size);

  _CalculatorMultiplyParams.init(
    double this.value
  ) : super(kVersions.last.size);

  static _CalculatorMultiplyParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _CalculatorMultiplyParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CalculatorMultiplyParams result = new _CalculatorMultiplyParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeDouble(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_CalculatorMultiplyParams";
    String fieldName;
    try {
      fieldName = "value";
      encoder0.encodeDouble(value, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_CalculatorMultiplyParams("
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["value"] = value;
    return map;
  }
}


class CalculatorMultiplyResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  double value = 0.0;

  CalculatorMultiplyResponseParams() : super(kVersions.last.size);

  CalculatorMultiplyResponseParams.init(
    double this.value
  ) : super(kVersions.last.size);

  static CalculatorMultiplyResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static CalculatorMultiplyResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CalculatorMultiplyResponseParams result = new CalculatorMultiplyResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.value = decoder0.decodeDouble(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "CalculatorMultiplyResponseParams";
    String fieldName;
    try {
      fieldName = "value";
      encoder0.encodeDouble(value, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "CalculatorMultiplyResponseParams("
           "value: $value" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["value"] = value;
    return map;
  }
}

const int _calculatorMethodClearName = 0;
const int _calculatorMethodAddName = 1;
const int _calculatorMethodMultiplyName = 2;

class _CalculatorServiceDescription implements service_describer.ServiceDescription {
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

abstract class Calculator {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _CalculatorServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static CalculatorProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    CalculatorProxy p = new CalculatorProxy.unbound();
    String name = serviceName ?? Calculator.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void clear(void callback(double value));
  void add(double value,void callback(double value));
  void multiply(double value,void callback(double value));
}

abstract class CalculatorInterface
    implements bindings.MojoInterface<Calculator>,
               Calculator {
  factory CalculatorInterface([Calculator impl]) =>
      new CalculatorStub.unbound(impl);

  factory CalculatorInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Calculator impl]) =>
      new CalculatorStub.fromEndpoint(endpoint, impl);

  factory CalculatorInterface.fromMock(
      Calculator mock) =>
      new CalculatorProxy.fromMock(mock);
}

abstract class CalculatorInterfaceRequest
    implements bindings.MojoInterface<Calculator>,
               Calculator {
  factory CalculatorInterfaceRequest() =>
      new CalculatorProxy.unbound();
}

class _CalculatorProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Calculator> {
  Calculator impl;

  _CalculatorProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _CalculatorProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _CalculatorProxyControl.unbound() : super.unbound();

  String get serviceName => Calculator.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _calculatorMethodClearName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = CalculatorClearResponseParams.deserialize(
              message.payload);
          callback(r.value );
        }
        break;
      case _calculatorMethodAddName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = CalculatorAddResponseParams.deserialize(
              message.payload);
          callback(r.value );
        }
        break;
      case _calculatorMethodMultiplyName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = CalculatorMultiplyResponseParams.deserialize(
              message.payload);
          callback(r.value );
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
    return "_CalculatorProxyControl($superString)";
  }
}

class CalculatorProxy
    extends bindings.Proxy<Calculator>
    implements Calculator,
               CalculatorInterface,
               CalculatorInterfaceRequest {
  CalculatorProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _CalculatorProxyControl.fromEndpoint(endpoint));

  CalculatorProxy.fromHandle(core.MojoHandle handle)
      : super(new _CalculatorProxyControl.fromHandle(handle));

  CalculatorProxy.unbound()
      : super(new _CalculatorProxyControl.unbound());

  factory CalculatorProxy.fromMock(Calculator mock) {
    CalculatorProxy newMockedProxy =
        new CalculatorProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static CalculatorProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CalculatorProxy"));
    return new CalculatorProxy.fromEndpoint(endpoint);
  }


  void clear(void callback(double value)) {
    if (impl != null) {
      impl.clear(callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _CalculatorClearParams();
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((double value) {
        z.bindCallback(() {
          callback(value);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _calculatorMethodClearName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void add(double value,void callback(double value)) {
    if (impl != null) {
      impl.add(value,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _CalculatorAddParams();
    params.value = value;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((double value) {
        z.bindCallback(() {
          callback(value);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _calculatorMethodAddName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void multiply(double value,void callback(double value)) {
    if (impl != null) {
      impl.multiply(value,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _CalculatorMultiplyParams();
    params.value = value;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((double value) {
        z.bindCallback(() {
          callback(value);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _calculatorMethodMultiplyName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _CalculatorStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Calculator> {
  Calculator _impl;

  _CalculatorStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Calculator impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _CalculatorStubControl.fromHandle(
      core.MojoHandle handle, [Calculator impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _CalculatorStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Calculator.serviceName;


  Function _calculatorClearResponseParamsResponder(
      int requestId) {
  return (double value) {
      var result = new CalculatorClearResponseParams();
      result.value = value;
      sendResponse(buildResponseWithId(
          result,
          _calculatorMethodClearName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _calculatorAddResponseParamsResponder(
      int requestId) {
  return (double value) {
      var result = new CalculatorAddResponseParams();
      result.value = value;
      sendResponse(buildResponseWithId(
          result,
          _calculatorMethodAddName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _calculatorMultiplyResponseParamsResponder(
      int requestId) {
  return (double value) {
      var result = new CalculatorMultiplyResponseParams();
      result.value = value;
      sendResponse(buildResponseWithId(
          result,
          _calculatorMethodMultiplyName,
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
      case _calculatorMethodClearName:
        _impl.clear(_calculatorClearResponseParamsResponder(message.header.requestId));
        break;
      case _calculatorMethodAddName:
        var params = _CalculatorAddParams.deserialize(
            message.payload);
        _impl.add(params.value, _calculatorAddResponseParamsResponder(message.header.requestId));
        break;
      case _calculatorMethodMultiplyName:
        var params = _CalculatorMultiplyParams.deserialize(
            message.payload);
        _impl.multiply(params.value, _calculatorMultiplyResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  Calculator get impl => _impl;
  set impl(Calculator d) {
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
    return "_CalculatorStubControl($superString)";
  }

  int get version => 0;
}

class CalculatorStub
    extends bindings.Stub<Calculator>
    implements Calculator,
               CalculatorInterface,
               CalculatorInterfaceRequest {
  CalculatorStub.unbound([Calculator impl])
      : super(new _CalculatorStubControl.unbound(impl));

  CalculatorStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Calculator impl])
      : super(new _CalculatorStubControl.fromEndpoint(endpoint, impl));

  CalculatorStub.fromHandle(
      core.MojoHandle handle, [Calculator impl])
      : super(new _CalculatorStubControl.fromHandle(handle, impl));

  static CalculatorStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CalculatorStub"));
    return new CalculatorStub.fromEndpoint(endpoint);
  }


  void clear(void callback(double value)) {
    return impl.clear(callback);
  }
  void add(double value,void callback(double value)) {
    return impl.add(value,callback);
  }
  void multiply(double value,void callback(double value)) {
    return impl.multiply(value,callback);
  }
}


mojom_types.RuntimeTypeInfo getRuntimeTypeInfo() => _runtimeTypeInfo ??
    _initRuntimeTypeInfo();

Map<String, mojom_types.UserDefinedType> getAllMojomTypeDefinitions() {
  return getRuntimeTypeInfo().typeMap;
}

var _runtimeTypeInfo;
mojom_types.RuntimeTypeInfo  _initRuntimeTypeInfo() {
  // serializedRuntimeTypeInfo contains the bytes of the Mojo serialization of
  // a mojom_types.RuntimeTypeInfo struct describing the Mojom types in this
  // file. The string contains the base64 encoding of the gzip-compressed bytes.
  var serializedRuntimeTypeInfo = "H4sIAAAJbogC/+yXTavaQBSGTWwhjf2wn6Y7oRs3dVxKV5YiFEqhi25cyRhHTZlkNJMU+i/6U112107qGR3HDAb1SrzkwGGu4wyc8+Q9741ebRNNWHuw6vtydbRVP9dXPlvKuTac/T76Nhx/GY4+hDhZdD9h6qcUJyz24Hx2r67c6yj31XCs/c8D7fuetv8X4nMtP16IdEXuKtrst0Q+E6mVe9C3A/cjkTORKOUxoszHFM0Zm1OCFiwkKMARZYGPkhUK2Q+GeOxv/limEyr2gygh8Qz7hKNJEE2DaM5RQnjCUVbA2N8W0M1uhYf8JadXwLEGXG3l+7ry3H4/AM5uPu+1fM52Md56dAz7T0Q+zHhTguMcHT2Cmq/Ns63peq2tx/qWOjPxeA29/+/7fUxWqagmp38Z1+7fMcyvp8+fphOdV9O+DK83Ip8qvPiSRZyUh5fOaZDjg3IGi8Sl5uonpikxzFWrBJxUPVlKfSb/6df3OR7jZEGaODXABz9Op7n/x9yS+c+l5ukl9C76VtynmqdT58mF94OyztNd6yl7z3i81ZN050pP5+jp3Q37s12Qkw1p4tSEWr6mNAmW9JfOqXFP/dmDHmXf0qSreTptnhrgUbfiz3+031tF9dQ38Hkr8vm+nnYmXfn0WbrqlFhX/wIAAP//mQPY/tgRAAA=";

  // Deserialize RuntimeTypeInfo
  var bytes = BASE64.decode(serializedRuntimeTypeInfo);
  var unzippedBytes = new ZLibDecoder().convert(bytes);
  var bdata = new ByteData.view(unzippedBytes.buffer);
  var message = new bindings.Message(bdata, null, unzippedBytes.length, 0);
  _runtimeTypeInfo = mojom_types.RuntimeTypeInfo.deserialize(message);
  return _runtimeTypeInfo;
}
