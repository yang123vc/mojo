// WARNING: DO NOT EDIT. This file was generated by a program.
// See $MOJO_SDK/tools/bindings/mojom_bindings_generator.py.

library geocoder_mojom;
import 'dart:async';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;
import 'package:mojo_services/mojo/location.mojom.dart' as location_mojom;



class LocationType extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];
  static const String rooftop = "ROOFTOP";
  static const String rangeInterpolated = "RANGE_INTERPOLATED";
  static const String geometricCenter = "GEOMETRIC_CENTER";
  static const String approximate = "APPROXIMATE";

  LocationType() : super(kVersions.last.size);

  LocationType.init(
  ) : super(kVersions.last.size);

  static LocationType deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static LocationType decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    LocationType result = new LocationType();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "LocationType";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "LocationType("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class Bounds extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  location_mojom.Location northeast = null;
  location_mojom.Location southwest = null;

  Bounds() : super(kVersions.last.size);

  Bounds.init(
    location_mojom.Location this.northeast, 
    location_mojom.Location this.southwest
  ) : super(kVersions.last.size);

  static Bounds deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static Bounds decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Bounds result = new Bounds();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.northeast = location_mojom.Location.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      result.southwest = location_mojom.Location.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "Bounds";
    String fieldName;
    try {
      fieldName = "northeast";
      encoder0.encodeStruct(northeast, 8, false);
      fieldName = "southwest";
      encoder0.encodeStruct(southwest, 16, false);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "Bounds("
           "northeast: $northeast" ", "
           "southwest: $southwest" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["northeast"] = northeast;
    map["southwest"] = southwest;
    return map;
  }
}


class ComponentRestrictions extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(48, 0)
  ];
  String administrativeArea = null;
  String country = null;
  String locality = null;
  String postalCode = null;
  String route = null;

  ComponentRestrictions() : super(kVersions.last.size);

  ComponentRestrictions.init(
    String this.administrativeArea, 
    String this.country, 
    String this.locality, 
    String this.postalCode, 
    String this.route
  ) : super(kVersions.last.size);

  static ComponentRestrictions deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static ComponentRestrictions decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ComponentRestrictions result = new ComponentRestrictions();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.administrativeArea = decoder0.decodeString(8, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.country = decoder0.decodeString(16, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.locality = decoder0.decodeString(24, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.postalCode = decoder0.decodeString(32, true);
    }
    if (mainDataHeader.version >= 0) {
      
      result.route = decoder0.decodeString(40, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "ComponentRestrictions";
    String fieldName;
    try {
      fieldName = "administrativeArea";
      encoder0.encodeString(administrativeArea, 8, true);
      fieldName = "country";
      encoder0.encodeString(country, 16, true);
      fieldName = "locality";
      encoder0.encodeString(locality, 24, true);
      fieldName = "postalCode";
      encoder0.encodeString(postalCode, 32, true);
      fieldName = "route";
      encoder0.encodeString(route, 40, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "ComponentRestrictions("
           "administrativeArea: $administrativeArea" ", "
           "country: $country" ", "
           "locality: $locality" ", "
           "postalCode: $postalCode" ", "
           "route: $route" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["administrativeArea"] = administrativeArea;
    map["country"] = country;
    map["locality"] = locality;
    map["postalCode"] = postalCode;
    map["route"] = route;
    return map;
  }
}


class Options extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(32, 0)
  ];
  ComponentRestrictions restrictions = null;
  location_mojom.Location location = null;
  String region = null;

  Options() : super(kVersions.last.size);

  Options.init(
    ComponentRestrictions this.restrictions, 
    location_mojom.Location this.location, 
    String this.region
  ) : super(kVersions.last.size);

  static Options deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static Options decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Options result = new Options();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.restrictions = ComponentRestrictions.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.location = location_mojom.Location.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.region = decoder0.decodeString(24, true);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "Options";
    String fieldName;
    try {
      fieldName = "restrictions";
      encoder0.encodeStruct(restrictions, 8, true);
      fieldName = "location";
      encoder0.encodeStruct(location, 16, true);
      fieldName = "region";
      encoder0.encodeString(region, 24, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "Options("
           "restrictions: $restrictions" ", "
           "location: $location" ", "
           "region: $region" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["restrictions"] = restrictions;
    map["location"] = location;
    map["region"] = region;
    return map;
  }
}


class Geometry extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(40, 0)
  ];
  location_mojom.Location location = null;
  LocationType locationType = null;
  Bounds viewport = null;
  Bounds bounds = null;

  Geometry() : super(kVersions.last.size);

  Geometry.init(
    location_mojom.Location this.location, 
    LocationType this.locationType, 
    Bounds this.viewport, 
    Bounds this.bounds
  ) : super(kVersions.last.size);

  static Geometry deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static Geometry decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Geometry result = new Geometry();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.location = location_mojom.Location.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      result.locationType = LocationType.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(24, false);
      result.viewport = Bounds.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(32, true);
      result.bounds = Bounds.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "Geometry";
    String fieldName;
    try {
      fieldName = "location";
      encoder0.encodeStruct(location, 8, false);
      fieldName = "locationType";
      encoder0.encodeStruct(locationType, 16, false);
      fieldName = "viewport";
      encoder0.encodeStruct(viewport, 24, false);
      fieldName = "bounds";
      encoder0.encodeStruct(bounds, 32, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "Geometry("
           "location: $location" ", "
           "locationType: $locationType" ", "
           "viewport: $viewport" ", "
           "bounds: $bounds" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["location"] = location;
    map["locationType"] = locationType;
    map["viewport"] = viewport;
    map["bounds"] = bounds;
    return map;
  }
}


class Result extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(40, 0)
  ];
  bool partialMatch = false;
  Geometry geometry = null;
  String formattedAddress = null;
  List<String> types = null;

  Result() : super(kVersions.last.size);

  Result.init(
    bool this.partialMatch, 
    Geometry this.geometry, 
    String this.formattedAddress, 
    List<String> this.types
  ) : super(kVersions.last.size);

  static Result deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static Result decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Result result = new Result();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.partialMatch = decoder0.decodeBool(8, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, false);
      result.geometry = Geometry.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      result.formattedAddress = decoder0.decodeString(24, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(32, false);
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
    const String structName = "Result";
    String fieldName;
    try {
      fieldName = "partialMatch";
      encoder0.encodeBool(partialMatch, 8, 0);
      fieldName = "geometry";
      encoder0.encodeStruct(geometry, 16, false);
      fieldName = "formattedAddress";
      encoder0.encodeString(formattedAddress, 24, false);
      fieldName = "types";
      if (types == null) {
        encoder0.encodeNullPointer(32, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(types.length, 32, bindings.kUnspecifiedArrayLength);
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
    return "Result("
           "partialMatch: $partialMatch" ", "
           "geometry: $geometry" ", "
           "formattedAddress: $formattedAddress" ", "
           "types: $types" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["partialMatch"] = partialMatch;
    map["geometry"] = geometry;
    map["formattedAddress"] = formattedAddress;
    map["types"] = types;
    return map;
  }
}


class Status extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];
  static const String ok = "OK";
  static const String zeroResults = "ZERO_RESULTS";
  static const String overQueryLimit = "OVER_QUERY_LIMIT";
  static const String requestDenied = "REQUEST_DENIED";
  static const String invalidRequest = "INVALID_REQUEST";

  Status() : super(kVersions.last.size);

  Status.init(
  ) : super(kVersions.last.size);

  static Status deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static Status decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Status result = new Status();
    bindings.Struct.checkVersion(decoder0, kVersions);
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "Status";
    String fieldName;
    try {
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "Status("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _GeocoderAddressToLocationParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String address = null;
  Options options = null;

  _GeocoderAddressToLocationParams() : super(kVersions.last.size);

  _GeocoderAddressToLocationParams.init(
    String this.address, 
    Options this.options
  ) : super(kVersions.last.size);

  static _GeocoderAddressToLocationParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _GeocoderAddressToLocationParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _GeocoderAddressToLocationParams result = new _GeocoderAddressToLocationParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.address = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.options = Options.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_GeocoderAddressToLocationParams";
    String fieldName;
    try {
      fieldName = "address";
      encoder0.encodeString(address, 8, false);
      fieldName = "options";
      encoder0.encodeStruct(options, 16, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_GeocoderAddressToLocationParams("
           "address: $address" ", "
           "options: $options" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["address"] = address;
    map["options"] = options;
    return map;
  }
}


class GeocoderAddressToLocationResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String status = null;
  List<Result> results = null;

  GeocoderAddressToLocationResponseParams() : super(kVersions.last.size);

  GeocoderAddressToLocationResponseParams.init(
    String this.status, 
    List<Result> this.results
  ) : super(kVersions.last.size);

  static GeocoderAddressToLocationResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static GeocoderAddressToLocationResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    GeocoderAddressToLocationResponseParams result = new GeocoderAddressToLocationResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.status = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.results = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.results = new List<Result>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.results[i1] = Result.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "GeocoderAddressToLocationResponseParams";
    String fieldName;
    try {
      fieldName = "status";
      encoder0.encodeString(status, 8, false);
      fieldName = "results";
      if (results == null) {
        encoder0.encodeNullPointer(16, true);
      } else {
        var encoder1 = encoder0.encodePointerArray(results.length, 16, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < results.length; ++i0) {
          encoder1.encodeStruct(results[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "GeocoderAddressToLocationResponseParams("
           "status: $status" ", "
           "results: $results" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["status"] = status;
    map["results"] = results;
    return map;
  }
}


class _GeocoderLocationToAddressParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  location_mojom.Location location = null;
  Options options = null;

  _GeocoderLocationToAddressParams() : super(kVersions.last.size);

  _GeocoderLocationToAddressParams.init(
    location_mojom.Location this.location, 
    Options this.options
  ) : super(kVersions.last.size);

  static _GeocoderLocationToAddressParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static _GeocoderLocationToAddressParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _GeocoderLocationToAddressParams result = new _GeocoderLocationToAddressParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      result.location = location_mojom.Location.decode(decoder1);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      result.options = Options.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "_GeocoderLocationToAddressParams";
    String fieldName;
    try {
      fieldName = "location";
      encoder0.encodeStruct(location, 8, false);
      fieldName = "options";
      encoder0.encodeStruct(options, 16, true);
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "_GeocoderLocationToAddressParams("
           "location: $location" ", "
           "options: $options" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["location"] = location;
    map["options"] = options;
    return map;
  }
}


class GeocoderLocationToAddressResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(24, 0)
  ];
  String status = null;
  List<Result> results = null;

  GeocoderLocationToAddressResponseParams() : super(kVersions.last.size);

  GeocoderLocationToAddressResponseParams.init(
    String this.status, 
    List<Result> this.results
  ) : super(kVersions.last.size);

  static GeocoderLocationToAddressResponseParams deserialize(bindings.Message message) =>
      bindings.Struct.deserialize(decode, message);

  static GeocoderLocationToAddressResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    GeocoderLocationToAddressResponseParams result = new GeocoderLocationToAddressResponseParams();
    var mainDataHeader = bindings.Struct.checkVersion(decoder0, kVersions);
    if (mainDataHeader.version >= 0) {
      
      result.status = decoder0.decodeString(8, false);
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(16, true);
      if (decoder1 == null) {
        result.results = null;
      } else {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.results = new List<Result>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          var decoder2 = decoder1.decodePointer(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
          result.results[i1] = Result.decode(decoder2);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    const String structName = "GeocoderLocationToAddressResponseParams";
    String fieldName;
    try {
      fieldName = "status";
      encoder0.encodeString(status, 8, false);
      fieldName = "results";
      if (results == null) {
        encoder0.encodeNullPointer(16, true);
      } else {
        var encoder1 = encoder0.encodePointerArray(results.length, 16, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < results.length; ++i0) {
          encoder1.encodeStruct(results[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      bindings.Struct.fixErrorMessage(e, fieldName, structName);
      rethrow;
    }
  }

  String toString() {
    return "GeocoderLocationToAddressResponseParams("
           "status: $status" ", "
           "results: $results" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["status"] = status;
    map["results"] = results;
    return map;
  }
}

const int _geocoderMethodAddressToLocationName = 0;
const int _geocoderMethodLocationToAddressName = 1;

class _GeocoderServiceDescription implements service_describer.ServiceDescription {
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

abstract class Geocoder {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _GeocoderServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static GeocoderProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    GeocoderProxy p = new GeocoderProxy.unbound();
    String name = serviceName ?? Geocoder.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void addressToLocation(String address,Options options,void callback(String status, List<Result> results));
  void locationToAddress(location_mojom.Location location,Options options,void callback(String status, List<Result> results));
}

abstract class GeocoderInterface
    implements bindings.MojoInterface<Geocoder>,
               Geocoder {
  factory GeocoderInterface([Geocoder impl]) =>
      new GeocoderStub.unbound(impl);

  factory GeocoderInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Geocoder impl]) =>
      new GeocoderStub.fromEndpoint(endpoint, impl);

  factory GeocoderInterface.fromMock(
      Geocoder mock) =>
      new GeocoderProxy.fromMock(mock);
}

abstract class GeocoderInterfaceRequest
    implements bindings.MojoInterface<Geocoder>,
               Geocoder {
  factory GeocoderInterfaceRequest() =>
      new GeocoderProxy.unbound();
}

class _GeocoderProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Geocoder> {
  Geocoder impl;

  _GeocoderProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _GeocoderProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _GeocoderProxyControl.unbound() : super.unbound();

  String get serviceName => Geocoder.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _geocoderMethodAddressToLocationName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = GeocoderAddressToLocationResponseParams.deserialize(
              message.payload);
          callback(r.status , r.results );
        }
        break;
      case _geocoderMethodLocationToAddressName:
        Function callback = getCallback(message);
        if (callback != null) {
          var r = GeocoderLocationToAddressResponseParams.deserialize(
              message.payload);
          callback(r.status , r.results );
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
    return "_GeocoderProxyControl($superString)";
  }
}

class GeocoderProxy
    extends bindings.Proxy<Geocoder>
    implements Geocoder,
               GeocoderInterface,
               GeocoderInterfaceRequest {
  GeocoderProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _GeocoderProxyControl.fromEndpoint(endpoint));

  GeocoderProxy.fromHandle(core.MojoHandle handle)
      : super(new _GeocoderProxyControl.fromHandle(handle));

  GeocoderProxy.unbound()
      : super(new _GeocoderProxyControl.unbound());

  factory GeocoderProxy.fromMock(Geocoder mock) {
    GeocoderProxy newMockedProxy =
        new GeocoderProxy.unbound();
    newMockedProxy.impl = mock;
    return newMockedProxy;
  }

  static GeocoderProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For GeocoderProxy"));
    return new GeocoderProxy.fromEndpoint(endpoint);
  }


  void addressToLocation(String address,Options options,void callback(String status, List<Result> results)) {
    if (impl != null) {
      impl.addressToLocation(address,options,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _GeocoderAddressToLocationParams();
    params.address = address;
    params.options = options;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((String status, List<Result> results) {
        z.bindCallback(() {
          callback(status, results);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _geocoderMethodAddressToLocationName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
  void locationToAddress(location_mojom.Location location,Options options,void callback(String status, List<Result> results)) {
    if (impl != null) {
      impl.locationToAddress(location,options,callback ?? bindings.DoNothingFunction.fn);
      return;
    }
    var params = new _GeocoderLocationToAddressParams();
    params.location = location;
    params.options = options;
    Function zonedCallback;
    if ((callback == null) || identical(Zone.current, Zone.ROOT)) {
      zonedCallback = callback;
    } else {
      Zone z = Zone.current;
      zonedCallback = ((String status, List<Result> results) {
        z.bindCallback(() {
          callback(status, results);
        })();
      });
    }
    ctrl.sendMessageWithRequestId(
        params,
        _geocoderMethodLocationToAddressName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse,
        zonedCallback);
  }
}

class _GeocoderStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Geocoder> {
  Geocoder _impl;

  _GeocoderStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Geocoder impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _GeocoderStubControl.fromHandle(
      core.MojoHandle handle, [Geocoder impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _GeocoderStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Geocoder.serviceName;


  Function _geocoderAddressToLocationResponseParamsResponder(
      int requestId) {
  return (String status, List<Result> results) {
      var result = new GeocoderAddressToLocationResponseParams();
      result.status = status;
      result.results = results;
      sendResponse(buildResponseWithId(
          result,
          _geocoderMethodAddressToLocationName,
          requestId,
          bindings.MessageHeader.kMessageIsResponse));
    };
  }
  Function _geocoderLocationToAddressResponseParamsResponder(
      int requestId) {
  return (String status, List<Result> results) {
      var result = new GeocoderLocationToAddressResponseParams();
      result.status = status;
      result.results = results;
      sendResponse(buildResponseWithId(
          result,
          _geocoderMethodLocationToAddressName,
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
      case _geocoderMethodAddressToLocationName:
        var params = _GeocoderAddressToLocationParams.deserialize(
            message.payload);
        _impl.addressToLocation(params.address, params.options, _geocoderAddressToLocationResponseParamsResponder(message.header.requestId));
        break;
      case _geocoderMethodLocationToAddressName:
        var params = _GeocoderLocationToAddressParams.deserialize(
            message.payload);
        _impl.locationToAddress(params.location, params.options, _geocoderLocationToAddressResponseParamsResponder(message.header.requestId));
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
  }

  Geocoder get impl => _impl;
  set impl(Geocoder d) {
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
    return "_GeocoderStubControl($superString)";
  }

  int get version => 0;
}

class GeocoderStub
    extends bindings.Stub<Geocoder>
    implements Geocoder,
               GeocoderInterface,
               GeocoderInterfaceRequest {
  GeocoderStub.unbound([Geocoder impl])
      : super(new _GeocoderStubControl.unbound(impl));

  GeocoderStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Geocoder impl])
      : super(new _GeocoderStubControl.fromEndpoint(endpoint, impl));

  GeocoderStub.fromHandle(
      core.MojoHandle handle, [Geocoder impl])
      : super(new _GeocoderStubControl.fromHandle(handle, impl));

  static GeocoderStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For GeocoderStub"));
    return new GeocoderStub.fromEndpoint(endpoint);
  }


  void addressToLocation(String address,Options options,void callback(String status, List<Result> results)) {
    return impl.addressToLocation(address,options,callback);
  }
  void locationToAddress(location_mojom.Location location,Options options,void callback(String status, List<Result> results)) {
    return impl.locationToAddress(location,options,callback);
  }
}



