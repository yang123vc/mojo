// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library terminal_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/files/file.mojom.dart' as file_mojom;
import 'package:mojo_services/mojo/files/types.mojom.dart' as types_mojom;
import 'package:mojo_services/mojo/terminal/terminal_client.mojom.dart' as terminal_client_mojom;



class _TerminalConnectParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  file_mojom.FileInterfaceRequest terminalFile = null;
  bool force = false;

  _TerminalConnectParams() : super(kVersions.last.size);

  _TerminalConnectParams.init(
    file_mojom.FileInterfaceRequest this.terminalFile, 
    bool this.force
  ) : super(kVersions.last.size);

  static _TerminalConnectParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _TerminalConnectParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _TerminalConnectParams result = new _TerminalConnectParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.terminalFile = decoder0.decodeInterfaceRequest(8, false, file_mojom.FileStub.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.force = decoder0.decodeBool(12, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_TerminalConnectParams";
    String fieldName;
    try {
      fieldName = "terminalFile";
      encoder0.encodeInterfaceRequest(terminalFile, 8, false);
      fieldName = "force";
      encoder0.encodeBool(force, 12, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_TerminalConnectParams("
           "terminalFile: $terminalFile" ", "
           "force: $force" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class TerminalConnectResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  types_mojom.Error error = null;

  TerminalConnectResponseParams() : super(kVersions.last.size);

  TerminalConnectResponseParams.init(
    types_mojom.Error this.error
  ) : super(kVersions.last.size);

  static TerminalConnectResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static TerminalConnectResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    TerminalConnectResponseParams result = new TerminalConnectResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.error = types_mojom.Error.decode(decoder0, 8);
        if (result.error == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable types_mojom.Error.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "TerminalConnectResponseParams";
    String fieldName;
    try {
      fieldName = "error";
      encoder0.encodeEnum(error, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "TerminalConnectResponseParams("
           "error: $error" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["error"] = error;
    return map;
  }
}


class _TerminalConnectToClientParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  terminal_client_mojom.TerminalClientInterface terminalClient = null;
  bool force = false;

  _TerminalConnectToClientParams() : super(kVersions.last.size);

  _TerminalConnectToClientParams.init(
    terminal_client_mojom.TerminalClientInterface this.terminalClient, 
    bool this.force
  ) : super(kVersions.last.size);

  static _TerminalConnectToClientParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _TerminalConnectToClientParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _TerminalConnectToClientParams result = new _TerminalConnectToClientParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.terminalClient = decoder0.decodeServiceInterface(8, false, terminal_client_mojom.TerminalClientProxy.newFromEndpoint);
    }
    if (mainDataHeader.version >= 0) {
      
      result.force = decoder0.decodeBool(16, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_TerminalConnectToClientParams";
    String fieldName;
    try {
      fieldName = "terminalClient";
      encoder0.encodeInterface(terminalClient, 8, false);
      fieldName = "force";
      encoder0.encodeBool(force, 16, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_TerminalConnectToClientParams("
           "terminalClient: $terminalClient" ", "
           "force: $force" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class TerminalConnectToClientResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  types_mojom.Error error = null;

  TerminalConnectToClientResponseParams() : super(kVersions.last.size);

  TerminalConnectToClientResponseParams.init(
    types_mojom.Error this.error
  ) : super(kVersions.last.size);

  static TerminalConnectToClientResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static TerminalConnectToClientResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    TerminalConnectToClientResponseParams result = new TerminalConnectToClientResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.error = types_mojom.Error.decode(decoder0, 8);
        if (result.error == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable types_mojom.Error.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "TerminalConnectToClientResponseParams";
    String fieldName;
    try {
      fieldName = "error";
      encoder0.encodeEnum(error, 8);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "TerminalConnectToClientResponseParams("
           "error: $error" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["error"] = error;
    return map;
  }
}


class _TerminalGetSizeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _TerminalGetSizeParams() : super(kVersions.last.size);

  _TerminalGetSizeParams.init(
  ) : super(kVersions.last.size);

  static _TerminalGetSizeParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _TerminalGetSizeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _TerminalGetSizeParams result = new _TerminalGetSizeParams();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_TerminalGetSizeParams";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_TerminalGetSizeParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class TerminalGetSizeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  types_mojom.Error error = null;
  int rows = 0;
  int columns = 0;

  TerminalGetSizeResponseParams() : super(kVersions.last.size);

  TerminalGetSizeResponseParams.init(
    types_mojom.Error this.error, 
    int this.rows, 
    int this.columns
  ) : super(kVersions.last.size);

  static TerminalGetSizeResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static TerminalGetSizeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    TerminalGetSizeResponseParams result = new TerminalGetSizeResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.error = types_mojom.Error.decode(decoder0, 8);
        if (result.error == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable types_mojom.Error.');
        }
    }
    if (mainDataHeader.version >= 0) {
      
      result.rows = decoder0.decodeUint32(12);
    }
    if (mainDataHeader.version >= 0) {
      
      result.columns = decoder0.decodeUint32(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "TerminalGetSizeResponseParams";
    String fieldName;
    try {
      fieldName = "error";
      encoder0.encodeEnum(error, 8);
      fieldName = "rows";
      encoder0.encodeUint32(rows, 12);
      fieldName = "columns";
      encoder0.encodeUint32(columns, 16);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "TerminalGetSizeResponseParams("
           "error: $error" ", "
           "rows: $rows" ", "
           "columns: $columns" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["error"] = error;
    map["rows"] = rows;
    map["columns"] = columns;
    return map;
  }
}


class _TerminalSetSizeParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  int rows = 0;
  int columns = 0;
  bool reset = false;

  _TerminalSetSizeParams() : super(kVersions.last.size);

  _TerminalSetSizeParams.init(
    int this.rows, 
    int this.columns, 
    bool this.reset
  ) : super(kVersions.last.size);

  static _TerminalSetSizeParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _TerminalSetSizeParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _TerminalSetSizeParams result = new _TerminalSetSizeParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.rows = decoder0.decodeUint32(8);
    }
    if (mainDataHeader.version >= 0) {
      
      result.columns = decoder0.decodeUint32(12);
    }
    if (mainDataHeader.version >= 0) {
      
      result.reset = decoder0.decodeBool(16, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_TerminalSetSizeParams";
    String fieldName;
    try {
      fieldName = "rows";
      encoder0.encodeUint32(rows, 8);
      fieldName = "columns";
      encoder0.encodeUint32(columns, 12);
      fieldName = "reset";
      encoder0.encodeBool(reset, 16, 0);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_TerminalSetSizeParams("
           "rows: $rows" ", "
           "columns: $columns" ", "
           "reset: $reset" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["rows"] = rows;
    map["columns"] = columns;
    map["reset"] = reset;
    return map;
  }
}


class TerminalSetSizeResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  types_mojom.Error error = null;
  int rows = 0;
  int columns = 0;

  TerminalSetSizeResponseParams() : super(kVersions.last.size);

  TerminalSetSizeResponseParams.init(
    types_mojom.Error this.error, 
    int this.rows, 
    int this.columns
  ) : super(kVersions.last.size);

  static TerminalSetSizeResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static TerminalSetSizeResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    TerminalSetSizeResponseParams result = new TerminalSetSizeResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
        result.error = types_mojom.Error.decode(decoder0, 8);
        if (result.error == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable types_mojom.Error.');
        }
    }
    if (mainDataHeader.version >= 0) {
      
      result.rows = decoder0.decodeUint32(12);
    }
    if (mainDataHeader.version >= 0) {
      
      result.columns = decoder0.decodeUint32(16);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "TerminalSetSizeResponseParams";
    String fieldName;
    try {
      fieldName = "error";
      encoder0.encodeEnum(error, 8);
      fieldName = "rows";
      encoder0.encodeUint32(rows, 12);
      fieldName = "columns";
      encoder0.encodeUint32(columns, 16);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "TerminalSetSizeResponseParams("
           "error: $error" ", "
           "rows: $rows" ", "
           "columns: $columns" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["error"] = error;
    map["rows"] = rows;
    map["columns"] = columns;
    return map;
  }
}

const int _terminalMethodConnectName = 0;
const int _terminalMethodConnectToClientName = 1;
const int _terminalMethodGetSizeName = 2;
const int _terminalMethodSetSizeName = 3;

class _TerminalServiceDescription implements service_describer.ServiceDescription {
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

abstract class Terminal {
  static const String serviceName = "mojo::terminal::Terminal";

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _TerminalServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static TerminalProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    TerminalProxy p = new TerminalProxy.unbound();
    String name = serviceName ?? Terminal.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void connect(file_mojom.FileInterfaceRequest terminalFile,bool force,void callback(types_mojom.Error error));
  void connectToClient(terminal_client_mojom.TerminalClientInterface terminalClient,bool force,void callback(types_mojom.Error error));
  void getSize(void callback(types_mojom.Error error, int rows, int columns));
  void setSize(int rows,int columns,bool reset,void callback(types_mojom.Error error, int rows, int columns));
}

abstract class TerminalInterface
    implements bindings.MojoInterface<Terminal>,
               Terminal {
  factory TerminalInterface([Terminal impl]) =>
      new TerminalStub.unbound(impl);

  factory TerminalInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Terminal impl]) =>
      new TerminalStub.fromEndpoint(endpoint, impl);

  factory TerminalInterface.fromMock(
      Terminal mock) =>
      new TerminalProxy.fromMock(mock);
}

abstract class TerminalInterfaceRequest
    implements bindings.MojoInterface<Terminal>,
               Terminal {
  factory TerminalInterfaceRequest() =>
      new TerminalProxy.unbound();
}

class _TerminalProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Terminal> {
  Terminal impl;

  _TerminalProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _TerminalProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _TerminalProxyControl.unbound() : super.unbound();

  String get serviceName => Terminal.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _terminalMethodConnectName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = TerminalConnectResponseParams.deserialize(
              message.payload);
          callback(r.error );
        }
        break;
      case _terminalMethodConnectToClientName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = TerminalConnectToClientResponseParams.deserialize(
              message.payload);
          callback(r.error );
        }
        break;
      case _terminalMethodGetSizeName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = TerminalGetSizeResponseParams.deserialize(
              message.payload);
          callback(r.error , r.rows , r.columns );
        }
        break;
      case _terminalMethodSetSizeName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = TerminalSetSizeResponseParams.deserialize(
              message.payload);
          callback(r.error , r.rows , r.columns );
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
    return "_TerminalProxyControl($superString)";
  }
}

class TerminalProxy
    extends bindings.Proxy<Terminal>
    implements Terminal,
               TerminalInterface,
               TerminalInterfaceRequest {
  TerminalProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _TerminalProxyControl.fromEndpoint(endpoint));

  TerminalProxy.fromHandle(core.MojoHandle handle)
      : super(new _TerminalProxyControl.fromHandle(handle));

  TerminalProxy.unbound()
      : super(new _TerminalProxyControl.unbound());

  factory TerminalProxy.fromMock(Terminal mock) {
    TerminalProxy newMockedProxy =
        new TerminalProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static TerminalProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For TerminalProxy"));
    return new TerminalProxy.fromEndpoint(endpoint);
  }


  void connect(file_mojom.FileInterfaceRequest terminalFile,bool force,void callback(types_mojom.Error error)) {
    if (impl != null) {
      impl.connect(terminalFile,force,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _TerminalConnectParams();
    params.terminalFile = terminalFile;
    params.force = force;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((types_mojom.Error error) {
        z.bindCallback(() {
          callback(error);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _terminalMethodConnectName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void connectToClient(terminal_client_mojom.TerminalClientInterface terminalClient,bool force,void callback(types_mojom.Error error)) {
    if (impl != null) {
      impl.connectToClient(terminalClient,force,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _TerminalConnectToClientParams();
    params.terminalClient = terminalClient;
    params.force = force;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((types_mojom.Error error) {
        z.bindCallback(() {
          callback(error);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _terminalMethodConnectToClientName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void getSize(void callback(types_mojom.Error error, int rows, int columns)) {
    if (impl != null) {
      impl.getSize(callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _TerminalGetSizeParams();
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((types_mojom.Error error, int rows, int columns) {
        z.bindCallback(() {
          callback(error, rows, columns);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _terminalMethodGetSizeName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void setSize(int rows,int columns,bool reset,void callback(types_mojom.Error error, int rows, int columns)) {
    if (impl != null) {
      impl.setSize(rows,columns,reset,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _TerminalSetSizeParams();
    params.rows = rows;
    params.columns = columns;
    params.reset = reset;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((types_mojom.Error error, int rows, int columns) {
        z.bindCallback(() {
          callback(error, rows, columns);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _terminalMethodSetSizeName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _TerminalStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Terminal> {
  Terminal _impl;

  _TerminalStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Terminal impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _TerminalStubControl.fromHandle(
      core.MojoHandle handle, [Terminal impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _TerminalStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Terminal.serviceName;


  Function _terminalConnectResponseParamsResponder(
      int requestId) {
  return (types_mojom.Error error) {
      var result = new TerminalConnectResponseParams();
      result.error = error;
      sendResponse(buildResponseWithId(
          result,
          _terminalMethodConnectName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _terminalConnectToClientResponseParamsResponder(
      int requestId) {
  return (types_mojom.Error error) {
      var result = new TerminalConnectToClientResponseParams();
      result.error = error;
      sendResponse(buildResponseWithId(
          result,
          _terminalMethodConnectToClientName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _terminalGetSizeResponseParamsResponder(
      int requestId) {
  return (types_mojom.Error error, int rows, int columns) {
      var result = new TerminalGetSizeResponseParams();
      result.error = error;
      result.rows = rows;
      result.columns = columns;
      sendResponse(buildResponseWithId(
          result,
          _terminalMethodGetSizeName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _terminalSetSizeResponseParamsResponder(
      int requestId) {
  return (types_mojom.Error error, int rows, int columns) {
      var result = new TerminalSetSizeResponseParams();
      result.error = error;
      result.rows = rows;
      result.columns = columns;
      sendResponse(buildResponseWithId(
          result,
          _terminalMethodSetSizeName,
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
      case _terminalMethodConnectName:
        var params = _TerminalConnectParams.deserialize(
            message.payload);
        _impl.connect(params.terminalFile, params.force, _terminalConnectResponseParamsResponder(message.header.requestId));
        break;
      case _terminalMethodConnectToClientName:
        var params = _TerminalConnectToClientParams.deserialize(
            message.payload);
        _impl.connectToClient(params.terminalClient, params.force, _terminalConnectToClientResponseParamsResponder(message.header.requestId));
        break;
      case _terminalMethodGetSizeName:
        _impl.getSize(_terminalGetSizeResponseParamsResponder(message.header.requestId));
        break;
      case _terminalMethodSetSizeName:
        var params = _TerminalSetSizeParams.deserialize(
            message.payload);
        _impl.setSize(params.rows, params.columns, params.reset, _terminalSetSizeResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  Terminal get impl => _impl;
  set impl(Terminal d) {
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
    return "_TerminalStubControl($superString)";
  }

  int get version => 0;
}

class TerminalStub
    extends bindings.Stub<Terminal>
    implements Terminal,
               TerminalInterface,
               TerminalInterfaceRequest {
  TerminalStub.unbound([Terminal impl])
      : super(new _TerminalStubControl.unbound(impl));

  TerminalStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Terminal impl])
      : super(new _TerminalStubControl.fromEndpoint(endpoint, impl));

  TerminalStub.fromHandle(
      core.MojoHandle handle, [Terminal impl])
      : super(new _TerminalStubControl.fromHandle(handle, impl));

  static TerminalStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For TerminalStub"));
    return new TerminalStub.fromEndpoint(endpoint);
  }


  void connect(file_mojom.FileInterfaceRequest terminalFile,bool force,void callback(types_mojom.Error error)) {
    return impl.connect(terminalFile,force,callback);
  }
  void connectToClient(terminal_client_mojom.TerminalClientInterface terminalClient,bool force,void callback(types_mojom.Error error)) {
    return impl.connectToClient(terminalClient,force,callback);
  }
  void getSize(void callback(types_mojom.Error error, int rows, int columns)) {
    return impl.getSize(callback);
  }
  void setSize(int rows,int columns,bool reset,void callback(types_mojom.Error error, int rows, int columns)) {
    return impl.setSize(rows,columns,reset,callback);
  }
}



