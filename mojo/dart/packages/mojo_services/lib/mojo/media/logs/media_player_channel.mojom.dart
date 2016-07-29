// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library media_player_channel_mojom;
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/media/media_types.mojom.dart' as media_types_mojom;
import 'package:mojo_services/mojo/timelines.mojom.dart' as timelines_mojom;



class _MediaPlayerChannelReceivedDemuxDescriptionParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<media_types_mojom.MediaType> streamTypes = null;

  _MediaPlayerChannelReceivedDemuxDescriptionParams() : super(kVersions.last.size);

  _MediaPlayerChannelReceivedDemuxDescriptionParams.init(
    List<media_types_mojom.MediaType> this.streamTypes
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelReceivedDemuxDescriptionParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelReceivedDemuxDescriptionParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelReceivedDemuxDescriptionParams result = new _MediaPlayerChannelReceivedDemuxDescriptionParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.streamTypes = new List<media_types_mojom.MediaType>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.streamTypes[i1] = media_types_mojom.MediaType.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelReceivedDemuxDescriptionParams";
    String fieldName;
    try {
      fieldName = "streamTypes";
      if (streamTypes == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(streamTypes.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < streamTypes.length; ++i0) {
          encoder1.encodeStruct(streamTypes[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelReceivedDemuxDescriptionParams("
           "streamTypes: $streamTypes" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["streamTypes"] = streamTypes;
    return map;
  }
}


class _MediaPlayerChannelStreamsPreparedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelStreamsPreparedParams() : super(kVersions.last.size);

  _MediaPlayerChannelStreamsPreparedParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelStreamsPreparedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelStreamsPreparedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelStreamsPreparedParams result = new _MediaPlayerChannelStreamsPreparedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelStreamsPreparedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelStreamsPreparedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelFlushedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelFlushedParams() : super(kVersions.last.size);

  _MediaPlayerChannelFlushedParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelFlushedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelFlushedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelFlushedParams result = new _MediaPlayerChannelFlushedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelFlushedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelFlushedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelPrimedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelPrimedParams() : super(kVersions.last.size);

  _MediaPlayerChannelPrimedParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelPrimedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelPrimedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelPrimedParams result = new _MediaPlayerChannelPrimedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelPrimedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelPrimedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelPlayingParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelPlayingParams() : super(kVersions.last.size);

  _MediaPlayerChannelPlayingParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelPlayingParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelPlayingParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelPlayingParams result = new _MediaPlayerChannelPlayingParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelPlayingParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelPlayingParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelPlayRequestedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelPlayRequestedParams() : super(kVersions.last.size);

  _MediaPlayerChannelPlayRequestedParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelPlayRequestedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelPlayRequestedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelPlayRequestedParams result = new _MediaPlayerChannelPlayRequestedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelPlayRequestedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelPlayRequestedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelPauseRequestedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelPauseRequestedParams() : super(kVersions.last.size);

  _MediaPlayerChannelPauseRequestedParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelPauseRequestedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelPauseRequestedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelPauseRequestedParams result = new _MediaPlayerChannelPauseRequestedParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelPauseRequestedParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelPauseRequestedParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelSeekRequestedParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int position = 0;

  _MediaPlayerChannelSeekRequestedParams() : super(kVersions.last.size);

  _MediaPlayerChannelSeekRequestedParams.init(
    int this.position
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelSeekRequestedParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelSeekRequestedParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelSeekRequestedParams result = new _MediaPlayerChannelSeekRequestedParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.position = decoder0.decodeInt64(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelSeekRequestedParams";
    String fieldName;
    try {
      fieldName = "position";
      encoder0.encodeInt64(position, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelSeekRequestedParams("
           "position: $position" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["position"] = position;
    return map;
  }
}


class _MediaPlayerChannelSeekingParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int position = 0;

  _MediaPlayerChannelSeekingParams() : super(kVersions.last.size);

  _MediaPlayerChannelSeekingParams.init(
    int this.position
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelSeekingParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelSeekingParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelSeekingParams result = new _MediaPlayerChannelSeekingParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.position = decoder0.decodeInt64(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelSeekingParams";
    String fieldName;
    try {
      fieldName = "position";
      encoder0.encodeInt64(position, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelSeekingParams("
           "position: $position" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["position"] = position;
    return map;
  }
}


class _MediaPlayerChannelPrimingParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelPrimingParams() : super(kVersions.last.size);

  _MediaPlayerChannelPrimingParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelPrimingParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelPrimingParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelPrimingParams result = new _MediaPlayerChannelPrimingParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelPrimingParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelPrimingParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelFlushingParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _MediaPlayerChannelFlushingParams() : super(kVersions.last.size);

  _MediaPlayerChannelFlushingParams.init(
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelFlushingParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelFlushingParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelFlushingParams result = new _MediaPlayerChannelFlushingParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelFlushingParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelFlushingParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _MediaPlayerChannelSettingTimelineTransformParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  timelines_mojom.TimelineTransform timelineTransform = null;

  _MediaPlayerChannelSettingTimelineTransformParams() : super(kVersions.last.size);

  _MediaPlayerChannelSettingTimelineTransformParams.init(
    timelines_mojom.TimelineTransform this.timelineTransform
  ) : super(kVersions.last.size);

  static _MediaPlayerChannelSettingTimelineTransformParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _MediaPlayerChannelSettingTimelineTransformParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _MediaPlayerChannelSettingTimelineTransformParams result = new _MediaPlayerChannelSettingTimelineTransformParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.timelineTransform = timelines_mojom.TimelineTransform.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_MediaPlayerChannelSettingTimelineTransformParams";
    String fieldName;
    try {
      fieldName = "timelineTransform";
      encoder0.encodeStruct(timelineTransform, 8, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_MediaPlayerChannelSettingTimelineTransformParams("
           "timelineTransform: $timelineTransform" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["timelineTransform"] = timelineTransform;
    return map;
  }
}

const int _mediaPlayerChannelMethodReceivedDemuxDescriptionName = 0;
const int _mediaPlayerChannelMethodStreamsPreparedName = 1;
const int _mediaPlayerChannelMethodFlushedName = 2;
const int _mediaPlayerChannelMethodPrimedName = 3;
const int _mediaPlayerChannelMethodPlayingName = 4;
const int _mediaPlayerChannelMethodPlayRequestedName = 5;
const int _mediaPlayerChannelMethodPauseRequestedName = 6;
const int _mediaPlayerChannelMethodSeekRequestedName = 7;
const int _mediaPlayerChannelMethodSeekingName = 8;
const int _mediaPlayerChannelMethodPrimingName = 9;
const int _mediaPlayerChannelMethodFlushingName = 10;
const int _mediaPlayerChannelMethodSettingTimelineTransformName = 11;

class _MediaPlayerChannelServiceDescription implements service_describer.ServiceDescription {
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

abstract class MediaPlayerChannel {
  static const String serviceName = "mojo::media::logs::MediaPlayerChannel";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _MediaPlayerChannelServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static MediaPlayerChannelProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    MediaPlayerChannelProxy p = new MediaPlayerChannelProxy.unbound();
    String name = serviceName ?? MediaPlayerChannel.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void receivedDemuxDescription(List<media_types_mojom.MediaType> streamTypes);
  void streamsPrepared();
  void flushed();
  void primed();
  void playing();
  void playRequested();
  void pauseRequested();
  void seekRequested(int position);
  void seeking(int position);
  void priming();
  void flushing();
  void settingTimelineTransform(timelines_mojom.TimelineTransform timelineTransform);
}

abstract class MediaPlayerChannelInterface
    implements bindings.MojoInterface<MediaPlayerChannel>,
               MediaPlayerChannel {
  factory MediaPlayerChannelInterface([MediaPlayerChannel impl]) =>
      new MediaPlayerChannelStub.unbound(impl);

  factory MediaPlayerChannelInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [MediaPlayerChannel impl]) =>
      new MediaPlayerChannelStub.fromEndpoint(endpoint, impl);

  factory MediaPlayerChannelInterface.fromMock(
      MediaPlayerChannel mock) =>
      new MediaPlayerChannelProxy.fromMock(mock);
}

abstract class MediaPlayerChannelInterfaceRequest
    implements bindings.MojoInterface<MediaPlayerChannel>,
               MediaPlayerChannel {
  factory MediaPlayerChannelInterfaceRequest() =>
      new MediaPlayerChannelProxy.unbound();
}

class _MediaPlayerChannelProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<MediaPlayerChannel> {
  MediaPlayerChannel impl;

  _MediaPlayerChannelProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _MediaPlayerChannelProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _MediaPlayerChannelProxyControl.unbound() : super.unbound();

  String get serviceName => MediaPlayerChannel.serviceName;

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
    return "_MediaPlayerChannelProxyControl($superString)";
  }
}

class MediaPlayerChannelProxy
    extends bindings.Proxy<MediaPlayerChannel>
    implements MediaPlayerChannel,
               MediaPlayerChannelInterface,
               MediaPlayerChannelInterfaceRequest {
  MediaPlayerChannelProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _MediaPlayerChannelProxyControl.fromEndpoint(endpoint));

  MediaPlayerChannelProxy.fromHandle(core.MojoHandle handle)
      : super(new _MediaPlayerChannelProxyControl.fromHandle(handle));

  MediaPlayerChannelProxy.unbound()
      : super(new _MediaPlayerChannelProxyControl.unbound());

  factory MediaPlayerChannelProxy.fromMock(MediaPlayerChannel mock) {
    MediaPlayerChannelProxy newMockedProxy =
        new MediaPlayerChannelProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static MediaPlayerChannelProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For MediaPlayerChannelProxy"));
    return new MediaPlayerChannelProxy.fromEndpoint(endpoint);
  }


  void receivedDemuxDescription(List<media_types_mojom.MediaType> streamTypes) {
    if (impl != null) {
      impl.receivedDemuxDescription(streamTypes);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelReceivedDemuxDescriptionParams();
    params.streamTypes = streamTypes;
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodReceivedDemuxDescriptionName);
  }
  void streamsPrepared() {
    if (impl != null) {
      impl.streamsPrepared();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelStreamsPreparedParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodStreamsPreparedName);
  }
  void flushed() {
    if (impl != null) {
      impl.flushed();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelFlushedParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodFlushedName);
  }
  void primed() {
    if (impl != null) {
      impl.primed();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelPrimedParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodPrimedName);
  }
  void playing() {
    if (impl != null) {
      impl.playing();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelPlayingParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodPlayingName);
  }
  void playRequested() {
    if (impl != null) {
      impl.playRequested();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelPlayRequestedParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodPlayRequestedName);
  }
  void pauseRequested() {
    if (impl != null) {
      impl.pauseRequested();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelPauseRequestedParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodPauseRequestedName);
  }
  void seekRequested(int position) {
    if (impl != null) {
      impl.seekRequested(position);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelSeekRequestedParams();
    params.position = position;
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodSeekRequestedName);
  }
  void seeking(int position) {
    if (impl != null) {
      impl.seeking(position);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelSeekingParams();
    params.position = position;
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodSeekingName);
  }
  void priming() {
    if (impl != null) {
      impl.priming();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelPrimingParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodPrimingName);
  }
  void flushing() {
    if (impl != null) {
      impl.flushing();
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelFlushingParams();
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodFlushingName);
  }
  void settingTimelineTransform(timelines_mojom.TimelineTransform timelineTransform) {
    if (impl != null) {
      impl.settingTimelineTransform(timelineTransform);
      return;
    }
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _MediaPlayerChannelSettingTimelineTransformParams();
    params.timelineTransform = timelineTransform;
    ctrl.sendMessage(params,
        _mediaPlayerChannelMethodSettingTimelineTransformName);
  }
}

class _MediaPlayerChannelStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<MediaPlayerChannel> {
  MediaPlayerChannel _impl;

  _MediaPlayerChannelStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [MediaPlayerChannel impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _MediaPlayerChannelStubControl.fromHandle(
      core.MojoHandle handle, [MediaPlayerChannel impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _MediaPlayerChannelStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => MediaPlayerChannel.serviceName;



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
      case _mediaPlayerChannelMethodReceivedDemuxDescriptionName:
        var params = _MediaPlayerChannelReceivedDemuxDescriptionParams.deserialize(
            message.payload);
        _impl.receivedDemuxDescription(params.streamTypes);
        break;
      case _mediaPlayerChannelMethodStreamsPreparedName:
        _impl.streamsPrepared();
        break;
      case _mediaPlayerChannelMethodFlushedName:
        _impl.flushed();
        break;
      case _mediaPlayerChannelMethodPrimedName:
        _impl.primed();
        break;
      case _mediaPlayerChannelMethodPlayingName:
        _impl.playing();
        break;
      case _mediaPlayerChannelMethodPlayRequestedName:
        _impl.playRequested();
        break;
      case _mediaPlayerChannelMethodPauseRequestedName:
        _impl.pauseRequested();
        break;
      case _mediaPlayerChannelMethodSeekRequestedName:
        var params = _MediaPlayerChannelSeekRequestedParams.deserialize(
            message.payload);
        _impl.seekRequested(params.position);
        break;
      case _mediaPlayerChannelMethodSeekingName:
        var params = _MediaPlayerChannelSeekingParams.deserialize(
            message.payload);
        _impl.seeking(params.position);
        break;
      case _mediaPlayerChannelMethodPrimingName:
        _impl.priming();
        break;
      case _mediaPlayerChannelMethodFlushingName:
        _impl.flushing();
        break;
      case _mediaPlayerChannelMethodSettingTimelineTransformName:
        var params = _MediaPlayerChannelSettingTimelineTransformParams.deserialize(
            message.payload);
        _impl.settingTimelineTransform(params.timelineTransform);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  MediaPlayerChannel get impl => _impl;
  set impl(MediaPlayerChannel d) {
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
    return "_MediaPlayerChannelStubControl($superString)";
  }

  int get version => 0;
}

class MediaPlayerChannelStub
    extends bindings.Stub<MediaPlayerChannel>
    implements MediaPlayerChannel,
               MediaPlayerChannelInterface,
               MediaPlayerChannelInterfaceRequest {
  MediaPlayerChannelStub.unbound([MediaPlayerChannel impl])
      : super(new _MediaPlayerChannelStubControl.unbound(impl));

  MediaPlayerChannelStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [MediaPlayerChannel impl])
      : super(new _MediaPlayerChannelStubControl.fromEndpoint(endpoint, impl));

  MediaPlayerChannelStub.fromHandle(
      core.MojoHandle handle, [MediaPlayerChannel impl])
      : super(new _MediaPlayerChannelStubControl.fromHandle(handle, impl));

  static MediaPlayerChannelStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For MediaPlayerChannelStub"));
    return new MediaPlayerChannelStub.fromEndpoint(endpoint);
  }


  void receivedDemuxDescription(List<media_types_mojom.MediaType> streamTypes) {
    return impl.receivedDemuxDescription(streamTypes);
  }
  void streamsPrepared() {
    return impl.streamsPrepared();
  }
  void flushed() {
    return impl.flushed();
  }
  void primed() {
    return impl.primed();
  }
  void playing() {
    return impl.playing();
  }
  void playRequested() {
    return impl.playRequested();
  }
  void pauseRequested() {
    return impl.pauseRequested();
  }
  void seekRequested(int position) {
    return impl.seekRequested(position);
  }
  void seeking(int position) {
    return impl.seeking(position);
  }
  void priming() {
    return impl.priming();
  }
  void flushing() {
    return impl.flushing();
  }
  void settingTimelineTransform(timelines_mojom.TimelineTransform timelineTransform) {
    return impl.settingTimelineTransform(timelineTransform);
  }
}



