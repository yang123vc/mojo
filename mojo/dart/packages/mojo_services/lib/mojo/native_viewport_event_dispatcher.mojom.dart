// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library native_viewport_event_dispatcher_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/input_events.mojom.dart' as input_events_mojom;



class _NativeViewportEventDispatcherOnEventParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  input_events_mojom.Event event = null;

  _NativeViewportEventDispatcherOnEventParams() : super(kVersions.last.size);

  _NativeViewportEventDispatcherOnEventParams.init(
    input_events_mojom.Event this.event
  ) : super(kVersions.last.size);

  static _NativeViewportEventDispatcherOnEventParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _NativeViewportEventDispatcherOnEventParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _NativeViewportEventDispatcherOnEventParams result = new _NativeViewportEventDispatcherOnEventParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.event = input_events_mojom.Event.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_NativeViewportEventDispatcherOnEventParams";
    String fieldName;
    try {
      fieldName = "event";
      encoder0.encodeStruct(event, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_NativeViewportEventDispatcherOnEventParams("
           "event: $event" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["event"] = event;
    return map;
  }
}


class NativeViewportEventDispatcherOnEventResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  NativeViewportEventDispatcherOnEventResponseParams() : super(kVersions.last.size);

  NativeViewportEventDispatcherOnEventResponseParams.init(
  ) : super(kVersions.last.size);

  static NativeViewportEventDispatcherOnEventResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static NativeViewportEventDispatcherOnEventResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    NativeViewportEventDispatcherOnEventResponseParams result = new NativeViewportEventDispatcherOnEventResponseParams();

    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "NativeViewportEventDispatcherOnEventResponseParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "NativeViewportEventDispatcherOnEventResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}

const int _nativeViewportEventDispatcherMethodOnEventName = 0;

class _NativeViewportEventDispatcherServiceDescription implements service_describer.ServiceDescription {
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

abstract class NativeViewportEventDispatcher {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _NativeViewportEventDispatcherServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static NativeViewportEventDispatcherProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    NativeViewportEventDispatcherProxy p = new NativeViewportEventDispatcherProxy.unbound();
    String name = serviceName ?? NativeViewportEventDispatcher.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void onEvent(input_events_mojom.Event event,void callback());
}

abstract class NativeViewportEventDispatcherInterface
    implements bindings.MojoInterface<NativeViewportEventDispatcher>,
               NativeViewportEventDispatcher {
  factory NativeViewportEventDispatcherInterface([NativeViewportEventDispatcher impl]) =>
      new NativeViewportEventDispatcherStub.unbound(impl);

  factory NativeViewportEventDispatcherInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [NativeViewportEventDispatcher impl]) =>
      new NativeViewportEventDispatcherStub.fromEndpoint(endpoint, impl);

  factory NativeViewportEventDispatcherInterface.fromMock(
      NativeViewportEventDispatcher mock) =>
      new NativeViewportEventDispatcherProxy.fromMock(mock);
}

abstract class NativeViewportEventDispatcherInterfaceRequest
    implements bindings.MojoInterface<NativeViewportEventDispatcher>,
               NativeViewportEventDispatcher {
  factory NativeViewportEventDispatcherInterfaceRequest() =>
      new NativeViewportEventDispatcherProxy.unbound();
}

class _NativeViewportEventDispatcherProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<NativeViewportEventDispatcher> {
  NativeViewportEventDispatcher impl;

  _NativeViewportEventDispatcherProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _NativeViewportEventDispatcherProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _NativeViewportEventDispatcherProxyControl.unbound() : super.unbound();

  String get serviceName => NativeViewportEventDispatcher.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _nativeViewportEventDispatcherMethodOnEventName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = NativeViewportEventDispatcherOnEventResponseParams.deserialize(
              message.payload);
          callback();
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
    return "_NativeViewportEventDispatcherProxyControl($superString)";
  }
}

class NativeViewportEventDispatcherProxy
    extends bindings.Proxy<NativeViewportEventDispatcher>
    implements NativeViewportEventDispatcher,
               NativeViewportEventDispatcherInterface,
               NativeViewportEventDispatcherInterfaceRequest {
  NativeViewportEventDispatcherProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _NativeViewportEventDispatcherProxyControl.fromEndpoint(endpoint));

  NativeViewportEventDispatcherProxy.fromHandle(core.MojoHandle handle)
      : super(new _NativeViewportEventDispatcherProxyControl.fromHandle(handle));

  NativeViewportEventDispatcherProxy.unbound()
      : super(new _NativeViewportEventDispatcherProxyControl.unbound());

  factory NativeViewportEventDispatcherProxy.fromMock(NativeViewportEventDispatcher mock) {
    NativeViewportEventDispatcherProxy newMockedProxy =
        new NativeViewportEventDispatcherProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static NativeViewportEventDispatcherProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NativeViewportEventDispatcherProxy"));
    return new NativeViewportEventDispatcherProxy.fromEndpoint(endpoint);
  }


  void onEvent(input_events_mojom.Event event,void callback()) {
    if (impl != null) {
      impl.onEvent(event,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _NativeViewportEventDispatcherOnEventParams();
    params.event = event;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = (() {
        z.bindCallback(() {
          callback();
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _nativeViewportEventDispatcherMethodOnEventName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _NativeViewportEventDispatcherStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<NativeViewportEventDispatcher> {
  NativeViewportEventDispatcher _impl;

  _NativeViewportEventDispatcherStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NativeViewportEventDispatcher impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _NativeViewportEventDispatcherStubControl.fromHandle(
      core.MojoHandle handle, [NativeViewportEventDispatcher impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _NativeViewportEventDispatcherStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => NativeViewportEventDispatcher.serviceName;


  Function _nativeViewportEventDispatcherOnEventResponseParamsResponder(
      int requestId) {
  return () {
      var result = new NativeViewportEventDispatcherOnEventResponseParams();
      sendResponse(buildResponseWithId(
          result,
          _nativeViewportEventDispatcherMethodOnEventName,
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
      case _nativeViewportEventDispatcherMethodOnEventName:
        var params = _NativeViewportEventDispatcherOnEventParams.deserialize(
            message.payload);
        _impl.onEvent(params.event, _nativeViewportEventDispatcherOnEventResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  NativeViewportEventDispatcher get impl => _impl;
  set impl(NativeViewportEventDispatcher d) {
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
    return "_NativeViewportEventDispatcherStubControl($superString)";
  }

  int get version => 0;
}

class NativeViewportEventDispatcherStub
    extends bindings.Stub<NativeViewportEventDispatcher>
    implements NativeViewportEventDispatcher,
               NativeViewportEventDispatcherInterface,
               NativeViewportEventDispatcherInterfaceRequest {
  NativeViewportEventDispatcherStub.unbound([NativeViewportEventDispatcher impl])
      : super(new _NativeViewportEventDispatcherStubControl.unbound(impl));

  NativeViewportEventDispatcherStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [NativeViewportEventDispatcher impl])
      : super(new _NativeViewportEventDispatcherStubControl.fromEndpoint(endpoint, impl));

  NativeViewportEventDispatcherStub.fromHandle(
      core.MojoHandle handle, [NativeViewportEventDispatcher impl])
      : super(new _NativeViewportEventDispatcherStubControl.fromHandle(handle, impl));

  static NativeViewportEventDispatcherStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For NativeViewportEventDispatcherStub"));
    return new NativeViewportEventDispatcherStub.fromEndpoint(endpoint);
  }


  void onEvent(input_events_mojom.Event event,void callback()) {
    return impl.onEvent(event,callback);
  }
}



