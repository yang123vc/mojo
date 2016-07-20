// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library resources_mojom;
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/geometry.mojom.dart' as geometry_mojom;
import 'package:mojo_services/mojo/gfx/composition/scene_token.mojom.dart' as scene_token_mojom;



class SceneResource extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  scene_token_mojom.SceneToken sceneToken = null;

  SceneResource() : super(kVersions.last.size);

  SceneResource.init(
    scene_token_mojom.SceneToken this.sceneToken
  ) : super(kVersions.last.size);

  static SceneResource deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static SceneResource decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    SceneResource result = new SceneResource();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.sceneToken = scene_token_mojom.SceneToken.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "SceneResource";
    String fieldName;
    try {
      fieldName = "sceneToken";
      encoder0.encodeStruct(sceneToken, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "SceneResource("
           "sceneToken: $sceneToken" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["sceneToken"] = sceneToken;
    return map;
  }
}


class MailboxTextureResourceOrigin extends bindings.MojoEnum {
  static const MailboxTextureResourceOrigin topLeft = const MailboxTextureResourceOrigin._(0);
  static const MailboxTextureResourceOrigin bottomLeft = const MailboxTextureResourceOrigin._(1);

  const MailboxTextureResourceOrigin._(int v) : super(v);

  static const Map<String, MailboxTextureResourceOrigin> valuesMap = const {
    "topLeft": topLeft,
    "bottomLeft": bottomLeft,
  };
  static const List<MailboxTextureResourceOrigin> values = const [
    topLeft,
    bottomLeft,
  ];

  static MailboxTextureResourceOrigin valueOf(String name) => valuesMap[name];

  factory MailboxTextureResourceOrigin(int v) {
    switch (v) {
      case 0:
        return MailboxTextureResourceOrigin.topLeft;
      case 1:
        return MailboxTextureResourceOrigin.bottomLeft;
      default:
        return null;
    }
  }

  static MailboxTextureResourceOrigin decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    MailboxTextureResourceOrigin result = new MailboxTextureResourceOrigin(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum MailboxTextureResourceOrigin.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case topLeft:
        return 'MailboxTextureResourceOrigin.topLeft';
      case bottomLeft:
        return 'MailboxTextureResourceOrigin.bottomLeft';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class MailboxTextureResource extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(40, 0)
  ];
  List<int> mailboxName = null;
  int syncPoint = 0;
  MailboxTextureResourceOrigin origin = new MailboxTextureResourceOrigin(0);
  geometry_mojom.Size size = null;
  MailboxTextureCallbackInterface callback = null;

  MailboxTextureResource() : super(kVersions.last.size);

  MailboxTextureResource.init(
    List<int> this.mailboxName, 
    int this.syncPoint, 
    MailboxTextureResourceOrigin this.origin, 
    geometry_mojom.Size this.size, 
    MailboxTextureCallbackInterface this.callback
  ) : super(kVersions.last.size);

  static MailboxTextureResource deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static MailboxTextureResource decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    MailboxTextureResource result = new MailboxTextureResource();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.mailboxName = decoder0.decodeUint8Array(8, bindings.kNothingNullable, 64);
    }
    if (mainDataHeader.version >= 0) {
      
      result.syncPoint = decoder0.decodeUint32(16);
    }
    if (mainDataHeader.version >= 0) {
      
        result.origin = MailboxTextureResourceOrigin.decode(decoder0, 20);
        if (result.origin == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable MailboxTextureResourceOrigin.');
        }
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(24, false);
      result.size = geometry_mojom.Size.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.callback = decoder0.decodeServiceInterface(32, false, MailboxTextureCallbackProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "MailboxTextureResource";
    String fieldName;
    try {
      fieldName = "mailboxName";
      encoder0.encodeUint8Array(mailboxName, 8, bindings.kNothingNullable, 64);
      fieldName = "syncPoint";
      encoder0.encodeUint32(syncPoint, 16);
      fieldName = "origin";
      encoder0.encodeEnum(origin, 20);
      fieldName = "size";
      encoder0.encodeStruct(size, 24, false);
      fieldName = "callback";
      encoder0.encodeInterface(callback, 32, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "MailboxTextureResource("
           "mailboxName: $mailboxName" ", "
           "syncPoint: $syncPoint" ", "
           "origin: $origin" ", "
           "size: $size" ", "
           "callback: $callback" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class _MailboxTextureCallbackOnMailboxTextureReleasedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MailboxTextureCallbackOnMailboxTextureReleasedParams() : super(kVersions.last.size);

  _MailboxTextureCallbackOnMailboxTextureReleasedParams.init(
  ) : super(kVersions.last.size);

  static _MailboxTextureCallbackOnMailboxTextureReleasedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MailboxTextureCallbackOnMailboxTextureReleasedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MailboxTextureCallbackOnMailboxTextureReleasedParams result = new _MailboxTextureCallbackOnMailboxTextureReleasedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MailboxTextureCallbackOnMailboxTextureReleasedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MailboxTextureCallbackOnMailboxTextureReleasedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}



enum ResourceTag {
  scene,
  mailboxTexture,
  unknown
}

class Resource extends bindings.Union {
  static final _tagToInt = const {
    ResourceTag.scene: 0,
    ResourceTag.mailboxTexture: 1,
  };

  static final _intToTag = const {
    0: ResourceTag.scene,
    1: ResourceTag.mailboxTexture,
  };

  var _data;
  ResourceTag _tag = ResourceTag.unknown;

  ResourceTag get tag => _tag;
  SceneResource get scene {
    if (_tag != ResourceTag.scene) {
      throw new bindings.UnsetUnionTagError(_tag, ResourceTag.scene);
    }
    return _data;
  }

  set scene(SceneResource value) {
    _tag = ResourceTag.scene;
    _data = value;
  }
  MailboxTextureResource get mailboxTexture {
    if (_tag != ResourceTag.mailboxTexture) {
      throw new bindings.UnsetUnionTagError(_tag, ResourceTag.mailboxTexture);
    }
    return _data;
  }

  set mailboxTexture(MailboxTextureResource value) {
    _tag = ResourceTag.mailboxTexture;
    _data = value;
  }

  static Resource decode(bindings.Decoder decoder0, int offset) {
    int size = decoder0.decodeUint32(offset);
    if (size == 0) {
      return null;
    }
    Resource result = new Resource();

    
    ResourceTag tag = _intToTag[decoder0.decodeUint32(offset + 4)];
    switch (tag) {
      case ResourceTag.scene:
        
        var decoder1 = decoder0.decodePointer(offset + 8, false);
        result.scene = SceneResource.decode(decoder1);
        break;
      case ResourceTag.mailboxTexture:
        
        var decoder1 = decoder0.decodePointer(offset + 8, false);
        result.mailboxTexture = MailboxTextureResource.decode(decoder1);
        break;
      default:
        throw new bindings.MojoCodecError("Bad union tag: $tag");
    }

    return result;
  }

  void encode(bindings.Encoder encoder0, int offset) {
    
    encoder0.encodeUint32(16, offset);
    encoder0.encodeUint32(_tagToInt[_tag], offset + 4);
    switch (_tag) {
      case ResourceTag.scene:
        encoder0.encodeStruct(scene, offset + 8, false);
        break;
      case ResourceTag.mailboxTexture:
        encoder0.encodeStruct(mailboxTexture, offset + 8, false);
        break;
      default:
        throw new bindings.MojoCodecError("Bad union tag: $_tag");
    }
  }

  String toString() {
    String result = "Resource(";
    switch (_tag) {
      case ResourceTag.scene:
        result += "scene";
        break;
      case ResourceTag.mailboxTexture:
        result += "mailboxTexture";
        break;
      default:
        result += "unknown";
    }
    result += ": $_data)";
    return result;
  }
}
const int _mailboxTextureCallbackMethodOnMailboxTextureReleasedName = 0;

class _MailboxTextureCallbackServiceDescription implements service_describer.ServiceDescription {
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

abstract class MailboxTextureCallback {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _MailboxTextureCallbackServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static MailboxTextureCallbackProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    MailboxTextureCallbackProxy p = new MailboxTextureCallbackProxy.unbound();
    String name = serviceName ?? MailboxTextureCallback.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void onMailboxTextureReleased();
}

abstract class MailboxTextureCallbackInterface
    implements bindings.MojoInterface<MailboxTextureCallback>,
               MailboxTextureCallback {
  factory MailboxTextureCallbackInterface([MailboxTextureCallback impl]) =>
      new MailboxTextureCallbackStub.unbound(impl);

  factory MailboxTextureCallbackInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [MailboxTextureCallback impl]) =>
      new MailboxTextureCallbackStub.fromEndpoint(endpoint, impl);

  factory MailboxTextureCallbackInterface.fromMock(
      MailboxTextureCallback mock) =>
      new MailboxTextureCallbackProxy.fromMock(mock);
}

abstract class MailboxTextureCallbackInterfaceRequest
    implements bindings.MojoInterface<MailboxTextureCallback>,
               MailboxTextureCallback {
  factory MailboxTextureCallbackInterfaceRequest() =>
      new MailboxTextureCallbackProxy.unbound();
}

class _MailboxTextureCallbackProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<MailboxTextureCallback> {
  MailboxTextureCallback impl;

  _MailboxTextureCallbackProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _MailboxTextureCallbackProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _MailboxTextureCallbackProxyControl.unbound() : super.unbound();

  String get serviceName => MailboxTextureCallback.serviceName;

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
    return "_MailboxTextureCallbackProxyControl($superString)";
  }
}

class MailboxTextureCallbackProxy
    extends bindings.Proxy<MailboxTextureCallback>
    implements MailboxTextureCallback,
               MailboxTextureCallbackInterface,
               MailboxTextureCallbackInterfaceRequest {
  MailboxTextureCallbackProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _MailboxTextureCallbackProxyControl.fromEndpoint(endpoint));

  MailboxTextureCallbackProxy.fromHandle(core.MojoHandle handle)
      : super(new _MailboxTextureCallbackProxyControl.fromHandle(handle));

  MailboxTextureCallbackProxy.unbound()
      : super(new _MailboxTextureCallbackProxyControl.unbound());

  factory MailboxTextureCallbackProxy.fromMock(MailboxTextureCallback mock) {
    MailboxTextureCallbackProxy newMockedProxy =
        new MailboxTextureCallbackProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static MailboxTextureCallbackProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For MailboxTextureCallbackProxy"));
    return new MailboxTextureCallbackProxy.fromEndpoint(endpoint);
  }


  void onMailboxTextureReleased() {
    if (impl != null) {
      impl.onMailboxTextureReleased();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MailboxTextureCallbackOnMailboxTextureReleasedParams();
    ctrl.sendMessage(params,
        _mailboxTextureCallbackMethodOnMailboxTextureReleasedName);
  }
}

class _MailboxTextureCallbackStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<MailboxTextureCallback> {
  MailboxTextureCallback _impl;

  _MailboxTextureCallbackStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [MailboxTextureCallback impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _MailboxTextureCallbackStubControl.fromHandle(
      core.MojoHandle handle, [MailboxTextureCallback impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _MailboxTextureCallbackStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => MailboxTextureCallback.serviceName;



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
      case _mailboxTextureCallbackMethodOnMailboxTextureReleasedName:
        _impl.onMailboxTextureReleased();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  MailboxTextureCallback get impl => _impl;
  set impl(MailboxTextureCallback d) {
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
    return "_MailboxTextureCallbackStubControl($superString)";
  }

  int get version => 0;
}

class MailboxTextureCallbackStub
    extends bindings.Stub<MailboxTextureCallback>
    implements MailboxTextureCallback,
               MailboxTextureCallbackInterface,
               MailboxTextureCallbackInterfaceRequest {
  MailboxTextureCallbackStub.unbound([MailboxTextureCallback impl])
      : super(new _MailboxTextureCallbackStubControl.unbound(impl));

  MailboxTextureCallbackStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [MailboxTextureCallback impl])
      : super(new _MailboxTextureCallbackStubControl.fromEndpoint(endpoint, impl));

  MailboxTextureCallbackStub.fromHandle(
      core.MojoHandle handle, [MailboxTextureCallback impl])
      : super(new _MailboxTextureCallbackStubControl.fromHandle(handle, impl));

  static MailboxTextureCallbackStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For MailboxTextureCallbackStub"));
    return new MailboxTextureCallbackStub.fromEndpoint(endpoint);
  }


  void onMailboxTextureReleased() {
    return impl.onMailboxTextureReleased();
  }
}



