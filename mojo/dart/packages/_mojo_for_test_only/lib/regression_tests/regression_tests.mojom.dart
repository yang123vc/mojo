// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library regression_tests_mojom;
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:mojo/bindings.dart' as bindings;
import 'package:mojo/core.dart' as core;
import 'package:mojo/mojo/bindings/types/mojom_types.mojom.dart' as mojom_types;
import 'package:mojo/mojo/bindings/types/service_describer.mojom.dart' as service_describer;

class EnumWithReference extends bindings.MojoEnum {
  static const EnumWithReference kStereoAndKeyboardMic = const EnumWithReference._(30);
  static const EnumWithReference kMax = const EnumWithReference._(30);

  const EnumWithReference._(int v) : super(v);

  static const Map<String, EnumWithReference> valuesMap = const {
    "kStereoAndKeyboardMic": kStereoAndKeyboardMic,
    "kMax": kMax,
  };
  static const List<EnumWithReference> values = const [
    kStereoAndKeyboardMic,
    kMax,
  ];

  static EnumWithReference valueOf(String name) => valuesMap[name];

  factory EnumWithReference(int v) {
    switch (v) {
      case 30:
        return EnumWithReference.kStereoAndKeyboardMic;
      case 30:
        return EnumWithReference.kMax;
      default:
        return null;
    }
  }

  static EnumWithReference decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    EnumWithReference result = new EnumWithReference(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum EnumWithReference.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case kStereoAndKeyboardMic:
        return 'EnumWithReference.kStereoAndKeyboardMic';
      case kMax:
        return 'EnumWithReference.kMax';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class EnumWithLowercase extends bindings.MojoEnum {
  static const EnumWithLowercase planarF16 = const EnumWithLowercase._(0);
  static const EnumWithLowercase planarF32 = const EnumWithLowercase._(1);

  const EnumWithLowercase._(int v) : super(v);

  static const Map<String, EnumWithLowercase> valuesMap = const {
    "planarF16": planarF16,
    "planarF32": planarF32,
  };
  static const List<EnumWithLowercase> values = const [
    planarF16,
    planarF32,
  ];

  static EnumWithLowercase valueOf(String name) => valuesMap[name];

  factory EnumWithLowercase(int v) {
    switch (v) {
      case 0:
        return EnumWithLowercase.planarF16;
      case 1:
        return EnumWithLowercase.planarF32;
      default:
        return null;
    }
  }

  static EnumWithLowercase decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    EnumWithLowercase result = new EnumWithLowercase(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum EnumWithLowercase.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case planarF16:
        return 'EnumWithLowercase.planarF16';
      case planarF32:
        return 'EnumWithLowercase.planarF32';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class EnumWithNumbers extends bindings.MojoEnum {
  static const EnumWithNumbers k21 = const EnumWithNumbers._(4);

  const EnumWithNumbers._(int v) : super(v);

  static const Map<String, EnumWithNumbers> valuesMap = const {
    "k21": k21,
  };
  static const List<EnumWithNumbers> values = const [
    k21,
  ];

  static EnumWithNumbers valueOf(String name) => valuesMap[name];

  factory EnumWithNumbers(int v) {
    switch (v) {
      case 4:
        return EnumWithNumbers.k21;
      default:
        return null;
    }
  }

  static EnumWithNumbers decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    EnumWithNumbers result = new EnumWithNumbers(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum EnumWithNumbers.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case k21:
        return 'EnumWithNumbers.k21';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class EnumWithK extends bindings.MojoEnum {
  static const EnumWithK k = const EnumWithK._(0);

  const EnumWithK._(int v) : super(v);

  static const Map<String, EnumWithK> valuesMap = const {
    "k": k,
  };
  static const List<EnumWithK> values = const [
    k,
  ];

  static EnumWithK valueOf(String name) => valuesMap[name];

  factory EnumWithK(int v) {
    switch (v) {
      case 0:
        return EnumWithK.k;
      default:
        return null;
    }
  }

  static EnumWithK decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    EnumWithK result = new EnumWithK(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum EnumWithK.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case k:
        return 'EnumWithK.k';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class EnumWithInternalAllCaps extends bindings.MojoEnum {
  static const EnumWithInternalAllCaps standard = const EnumWithInternalAllCaps._(0);
  static const EnumWithInternalAllCaps fullscreen = const EnumWithInternalAllCaps._(1);
  static const EnumWithInternalAllCaps immersive = const EnumWithInternalAllCaps._(2);

  const EnumWithInternalAllCaps._(int v) : super(v);

  static const Map<String, EnumWithInternalAllCaps> valuesMap = const {
    "standard": standard,
    "fullscreen": fullscreen,
    "immersive": immersive,
  };
  static const List<EnumWithInternalAllCaps> values = const [
    standard,
    fullscreen,
    immersive,
  ];

  static EnumWithInternalAllCaps valueOf(String name) => valuesMap[name];

  factory EnumWithInternalAllCaps(int v) {
    switch (v) {
      case 0:
        return EnumWithInternalAllCaps.standard;
      case 1:
        return EnumWithInternalAllCaps.fullscreen;
      case 2:
        return EnumWithInternalAllCaps.immersive;
      default:
        return null;
    }
  }

  static EnumWithInternalAllCaps decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    EnumWithInternalAllCaps result = new EnumWithInternalAllCaps(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum EnumWithInternalAllCaps.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case standard:
        return 'EnumWithInternalAllCaps.standard';
      case fullscreen:
        return 'EnumWithInternalAllCaps.fullscreen';
      case immersive:
        return 'EnumWithInternalAllCaps.immersive';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class NormalEnum extends bindings.MojoEnum {
  static const NormalEnum first = const NormalEnum._(0);
  static const NormalEnum second = const NormalEnum._(1);

  const NormalEnum._(int v) : super(v);

  static const Map<String, NormalEnum> valuesMap = const {
    "first": first,
    "second": second,
  };
  static const List<NormalEnum> values = const [
    first,
    second,
  ];

  static NormalEnum valueOf(String name) => valuesMap[name];

  factory NormalEnum(int v) {
    switch (v) {
      case 0:
        return NormalEnum.first;
      case 1:
        return NormalEnum.second;
      default:
        return null;
    }
  }

  static NormalEnum decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    NormalEnum result = new NormalEnum(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum NormalEnum.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case first:
        return 'NormalEnum.first';
      case second:
        return 'NormalEnum.second';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}

class CamelCaseTestEnum extends bindings.MojoEnum {
  static const CamelCaseTestEnum boolThing = const CamelCaseTestEnum._(0);
  static const CamelCaseTestEnum doubleThing = const CamelCaseTestEnum._(1);
  static const CamelCaseTestEnum floatThing = const CamelCaseTestEnum._(2);
  static const CamelCaseTestEnum int8Thing = const CamelCaseTestEnum._(3);
  static const CamelCaseTestEnum int16Thing = const CamelCaseTestEnum._(4);
  static const CamelCaseTestEnum int32Th1Ng = const CamelCaseTestEnum._(5);
  static const CamelCaseTestEnum int64Th1ng = const CamelCaseTestEnum._(6);
  static const CamelCaseTestEnum uint8TH1ng = const CamelCaseTestEnum._(7);
  static const CamelCaseTestEnum uint16tH1Ng = const CamelCaseTestEnum._(8);
  static const CamelCaseTestEnum uint32Th1ng = const CamelCaseTestEnum._(9);
  static const CamelCaseTestEnum uint64Th1Ng = const CamelCaseTestEnum._(10);

  const CamelCaseTestEnum._(int v) : super(v);

  static const Map<String, CamelCaseTestEnum> valuesMap = const {
    "boolThing": boolThing,
    "doubleThing": doubleThing,
    "floatThing": floatThing,
    "int8Thing": int8Thing,
    "int16Thing": int16Thing,
    "int32Th1Ng": int32Th1Ng,
    "int64Th1ng": int64Th1ng,
    "uint8TH1ng": uint8TH1ng,
    "uint16tH1Ng": uint16tH1Ng,
    "uint32Th1ng": uint32Th1ng,
    "uint64Th1Ng": uint64Th1Ng,
  };
  static const List<CamelCaseTestEnum> values = const [
    boolThing,
    doubleThing,
    floatThing,
    int8Thing,
    int16Thing,
    int32Th1Ng,
    int64Th1ng,
    uint8TH1ng,
    uint16tH1Ng,
    uint32Th1ng,
    uint64Th1Ng,
  ];

  static CamelCaseTestEnum valueOf(String name) => valuesMap[name];

  factory CamelCaseTestEnum(int v) {
    switch (v) {
      case 0:
        return CamelCaseTestEnum.boolThing;
      case 1:
        return CamelCaseTestEnum.doubleThing;
      case 2:
        return CamelCaseTestEnum.floatThing;
      case 3:
        return CamelCaseTestEnum.int8Thing;
      case 4:
        return CamelCaseTestEnum.int16Thing;
      case 5:
        return CamelCaseTestEnum.int32Th1Ng;
      case 6:
        return CamelCaseTestEnum.int64Th1ng;
      case 7:
        return CamelCaseTestEnum.uint8TH1ng;
      case 8:
        return CamelCaseTestEnum.uint16tH1Ng;
      case 9:
        return CamelCaseTestEnum.uint32Th1ng;
      case 10:
        return CamelCaseTestEnum.uint64Th1Ng;
      default:
        return null;
    }
  }

  static CamelCaseTestEnum decode(bindings.Decoder decoder0, int offset) {
    int v = decoder0.decodeUint32(offset);
    CamelCaseTestEnum result = new CamelCaseTestEnum(v);
    if (result == null) {
      throw new bindings.MojoCodecError(
          'Bad value $v for enum CamelCaseTestEnum.');
    }
    return result;
  }

  String toString() {
    switch(this) {
      case boolThing:
        return 'CamelCaseTestEnum.boolThing';
      case doubleThing:
        return 'CamelCaseTestEnum.doubleThing';
      case floatThing:
        return 'CamelCaseTestEnum.floatThing';
      case int8Thing:
        return 'CamelCaseTestEnum.int8Thing';
      case int16Thing:
        return 'CamelCaseTestEnum.int16Thing';
      case int32Th1Ng:
        return 'CamelCaseTestEnum.int32Th1Ng';
      case int64Th1ng:
        return 'CamelCaseTestEnum.int64Th1ng';
      case uint8TH1ng:
        return 'CamelCaseTestEnum.uint8TH1ng';
      case uint16tH1Ng:
        return 'CamelCaseTestEnum.uint16tH1Ng';
      case uint32Th1ng:
        return 'CamelCaseTestEnum.uint32Th1ng';
      case uint64Th1Ng:
        return 'CamelCaseTestEnum.uint64Th1Ng';
      default:
        return null;
    }
  }

  int toJson() => mojoEnumValue;
}



class Edge extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  Vertex v = null;

  Edge() : super(kVersions.last.size);

  static Edge deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static Edge decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Edge result = new Edge();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.v = Vertex.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(v, 8, true);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "v of struct Edge: $e";
      rethrow;
    }
  }

  String toString() {
    return "Edge("
           "v: $v" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["v"] = v;
    return map;
  }
}


class Vertex extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  EmptyStruct e = null;

  Vertex() : super(kVersions.last.size);

  static Vertex deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static Vertex decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Vertex result = new Vertex();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.e = EmptyStruct.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(e, 8, true);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "e of struct Vertex: $e";
      rethrow;
    }
  }

  String toString() {
    return "Vertex("
           "e: $e" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["e"] = e;
    return map;
  }
}


class EmptyStruct extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  EmptyStruct() : super(kVersions.last.size);

  static EmptyStruct deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static EmptyStruct decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    EmptyStruct result = new EmptyStruct();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "EmptyStruct("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class A extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  B b = null;

  A() : super(kVersions.last.size);

  static A deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static A decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    A result = new A();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.b = B.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(b, 8, true);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "b of struct A: $e";
      rethrow;
    }
  }

  String toString() {
    return "A("
           "b: $b" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["b"] = b;
    return map;
  }
}


class B extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  A a = null;

  B() : super(kVersions.last.size);

  static B deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static B decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    B result = new B();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, true);
      result.a = A.decode(decoder1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeStruct(a, 8, true);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "a of struct B: $e";
      rethrow;
    }
  }

  String toString() {
    return "B("
           "a: $a" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["a"] = a;
    return map;
  }
}


class StructWithHandleCalledHandles extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  core.MojoHandle handles = null;

  StructWithHandleCalledHandles() : super(kVersions.last.size);

  static StructWithHandleCalledHandles deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static StructWithHandleCalledHandles decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    StructWithHandleCalledHandles result = new StructWithHandleCalledHandles();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.handles = decoder0.decodeHandle(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeHandle(handles, 8, false);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "handles of struct StructWithHandleCalledHandles: $e";
      rethrow;
    }
  }

  String toString() {
    return "StructWithHandleCalledHandles("
           "handles: $handles" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class StructWithArrayOfHandlesCalledHandles extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<core.MojoHandle> handles = null;

  StructWithArrayOfHandlesCalledHandles() : super(kVersions.last.size);

  static StructWithArrayOfHandlesCalledHandles deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static StructWithArrayOfHandlesCalledHandles decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    StructWithArrayOfHandlesCalledHandles result = new StructWithArrayOfHandlesCalledHandles();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.handles = decoder0.decodeHandleArray(8, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeHandleArray(handles, 8, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "handles of struct StructWithArrayOfHandlesCalledHandles: $e";
      rethrow;
    }
  }

  String toString() {
    return "StructWithArrayOfHandlesCalledHandles("
           "handles: $handles" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class StructWithInterfaceCalledHandles extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  TestInterfaceInterface handles = null;

  StructWithInterfaceCalledHandles() : super(kVersions.last.size);

  static StructWithInterfaceCalledHandles deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static StructWithInterfaceCalledHandles decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    StructWithInterfaceCalledHandles result = new StructWithInterfaceCalledHandles();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.handles = decoder0.decodeServiceInterface(8, false, TestInterfaceProxy.newFromEndpoint);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeInterface(handles, 8, false);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "handles of struct StructWithInterfaceCalledHandles: $e";
      rethrow;
    }
  }

  String toString() {
    return "StructWithInterfaceCalledHandles("
           "handles: $handles" ")";
  }

  Map toJson() {
    throw new bindings.MojoCodecError(
        'Object containing handles cannot be encoded to JSON.');
  }
}


class ContainsArrayOfEnum extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<NormalEnum> arrayOfEnums = null;

  ContainsArrayOfEnum() : super(kVersions.last.size);

  static ContainsArrayOfEnum deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static ContainsArrayOfEnum decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ContainsArrayOfEnum result = new ContainsArrayOfEnum();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForEnumArray(bindings.kUnspecifiedArrayLength);
        result.arrayOfEnums = new List<NormalEnum>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
            result.arrayOfEnums[i1] = NormalEnum.decode(decoder1, bindings.ArrayDataHeader.kHeaderSize + bindings.kEnumSize * i1);
            if (result.arrayOfEnums[i1] == null) {
              throw new bindings.MojoCodecError(
                'Trying to decode null union for non-nullable NormalEnum.');
            }
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeEnumArray(arrayOfEnums, 8, bindings.kNothingNullable, bindings.kUnspecifiedArrayLength);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "arrayOfEnums of struct ContainsArrayOfEnum: $e";
      rethrow;
    }
  }

  String toString() {
    return "ContainsArrayOfEnum("
           "arrayOfEnums: $arrayOfEnums" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["arrayOfEnums"] = arrayOfEnums;
    return map;
  }
}


class _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams() : super(kVersions.last.size);

  static _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams result = new _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams() : super(kVersions.last.size);

  static CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams result = new CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool b = false;

  _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams() : super(kVersions.last.size);

  static _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams result = new _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.b = decoder0.decodeBool(8, 0);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeBool(b, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "b of struct _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams("
           "b: $b" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["b"] = b;
    return map;
  }
}


class CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams() : super(kVersions.last.size);

  static CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams result = new CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _CheckNameCollisionWithNameCollisionParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool message = false;
  bool response = false;

  _CheckNameCollisionWithNameCollisionParams() : super(kVersions.last.size);

  static _CheckNameCollisionWithNameCollisionParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _CheckNameCollisionWithNameCollisionParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CheckNameCollisionWithNameCollisionParams result = new _CheckNameCollisionWithNameCollisionParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.message = decoder0.decodeBool(8, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      result.response = decoder0.decodeBool(8, 1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeBool(message, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "message of struct _CheckNameCollisionWithNameCollisionParams: $e";
      rethrow;
    }
    try {
      encoder0.encodeBool(response, 8, 1);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "response of struct _CheckNameCollisionWithNameCollisionParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_CheckNameCollisionWithNameCollisionParams("
           "message: $message" ", "
           "response: $response" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["message"] = message;
    map["response"] = response;
    return map;
  }
}


class CheckNameCollisionWithNameCollisionResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  bool message = false;
  bool response = false;

  CheckNameCollisionWithNameCollisionResponseParams() : super(kVersions.last.size);

  static CheckNameCollisionWithNameCollisionResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static CheckNameCollisionWithNameCollisionResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    CheckNameCollisionWithNameCollisionResponseParams result = new CheckNameCollisionWithNameCollisionResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.message = decoder0.decodeBool(8, 0);
    }
    if (mainDataHeader.version >= 0) {
      
      result.response = decoder0.decodeBool(8, 1);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeBool(message, 8, 0);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "message of struct CheckNameCollisionWithNameCollisionResponseParams: $e";
      rethrow;
    }
    try {
      encoder0.encodeBool(response, 8, 1);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "response of struct CheckNameCollisionWithNameCollisionResponseParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "CheckNameCollisionWithNameCollisionResponseParams("
           "message: $message" ", "
           "response: $response" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["message"] = message;
    map["response"] = response;
    return map;
  }
}


class _CheckEnumCapsSetEnumWithInternalAllCapsParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  EnumWithInternalAllCaps e = null;

  _CheckEnumCapsSetEnumWithInternalAllCapsParams() : super(kVersions.last.size);

  static _CheckEnumCapsSetEnumWithInternalAllCapsParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _CheckEnumCapsSetEnumWithInternalAllCapsParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _CheckEnumCapsSetEnumWithInternalAllCapsParams result = new _CheckEnumCapsSetEnumWithInternalAllCapsParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
        result.e = EnumWithInternalAllCaps.decode(decoder0, 8);
        if (result.e == null) {
          throw new bindings.MojoCodecError(
            'Trying to decode null union for non-nullable EnumWithInternalAllCaps.');
        }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeEnum(e, 8);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "e of struct _CheckEnumCapsSetEnumWithInternalAllCapsParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_CheckEnumCapsSetEnumWithInternalAllCapsParams("
           "e: $e" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["e"] = e;
    return map;
  }
}


class _TestInterfaceSomeMessageParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _TestInterfaceSomeMessageParams() : super(kVersions.last.size);

  static _TestInterfaceSomeMessageParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _TestInterfaceSomeMessageParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _TestInterfaceSomeMessageParams result = new _TestInterfaceSomeMessageParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_TestInterfaceSomeMessageParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class _Regression551GetParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  List<String> keyPrefixes = null;

  _Regression551GetParams() : super(kVersions.last.size);

  static _Regression551GetParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _Regression551GetParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _Regression551GetParams result = new _Regression551GetParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      var decoder1 = decoder0.decodePointer(8, false);
      {
        var si1 = decoder1.decodeDataHeaderForPointerArray(bindings.kUnspecifiedArrayLength);
        result.keyPrefixes = new List<String>(si1.numElements);
        for (int i1 = 0; i1 < si1.numElements; ++i1) {
          
          result.keyPrefixes[i1] = decoder1.decodeString(bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i1, false);
        }
      }
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      if (keyPrefixes == null) {
        encoder0.encodeNullPointer(8, false);
      } else {
        var encoder1 = encoder0.encodePointerArray(keyPrefixes.length, 8, bindings.kUnspecifiedArrayLength);
        for (int i0 = 0; i0 < keyPrefixes.length; ++i0) {
          encoder1.encodeString(keyPrefixes[i0], bindings.ArrayDataHeader.kHeaderSize + bindings.kPointerSize * i0, false);
        }
      }
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "keyPrefixes of struct _Regression551GetParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "_Regression551GetParams("
           "keyPrefixes: $keyPrefixes" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["keyPrefixes"] = keyPrefixes;
    return map;
  }
}


class Regression551GetResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  int result = 0;

  Regression551GetResponseParams() : super(kVersions.last.size);

  static Regression551GetResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static Regression551GetResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    Regression551GetResponseParams result = new Regression551GetResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.result = decoder0.decodeInt32(8);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeInt32(result, 8);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "result of struct Regression551GetResponseParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "Regression551GetResponseParams("
           "result: $result" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["result"] = result;
    return map;
  }
}


class _ServiceNameServiceNameParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(8, 0)
  ];

  _ServiceNameServiceNameParams() : super(kVersions.last.size);

  static _ServiceNameServiceNameParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static _ServiceNameServiceNameParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    _ServiceNameServiceNameParams result = new _ServiceNameServiceNameParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    encoder.getStructEncoderAtOffset(kVersions.last);
  }

  String toString() {
    return "_ServiceNameServiceNameParams("")";
  }

  Map toJson() {
    Map map = new Map();
    return map;
  }
}


class ServiceNameServiceNameResponseParams extends bindings.Struct {
  static const List<bindings.StructDataHeader> kVersions = const [
    const bindings.StructDataHeader(16, 0)
  ];
  String serviceName_ = null;

  ServiceNameServiceNameResponseParams() : super(kVersions.last.size);

  static ServiceNameServiceNameResponseParams deserialize(bindings.Message message) {
    var decoder = new bindings.Decoder(message);
    var result = decode(decoder);
    if (decoder.excessHandles != null) {
      decoder.excessHandles.forEach((h) => h.close());
    }
    return result;
  }

  static ServiceNameServiceNameResponseParams decode(bindings.Decoder decoder0) {
    if (decoder0 == null) {
      return null;
    }
    ServiceNameServiceNameResponseParams result = new ServiceNameServiceNameResponseParams();

    var mainDataHeader = decoder0.decodeStructDataHeader();
    if (mainDataHeader.version <= kVersions.last.version) {
      // Scan in reverse order to optimize for more recent versions.
      for (int i = kVersions.length - 1; i >= 0; --i) {
        if (mainDataHeader.version >= kVersions[i].version) {
          if (mainDataHeader.size == kVersions[i].size) {
            // Found a match.
            break;
          }
          throw new bindings.MojoCodecError(
              'Header size doesn\'t correspond to known version size.');
        }
      }
    } else if (mainDataHeader.size < kVersions.last.size) {
      throw new bindings.MojoCodecError(
        'Message newer than the last known version cannot be shorter than '
        'required by the last known version.');
    }
    if (mainDataHeader.version >= 0) {
      
      result.serviceName_ = decoder0.decodeString(8, false);
    }
    return result;
  }

  void encode(bindings.Encoder encoder) {
    var encoder0 = encoder.getStructEncoderAtOffset(kVersions.last);
    try {
      encoder0.encodeString(serviceName_, 8, false);
    } on bindings.MojoCodecError catch(e) {
      e.message = "Error encountered while encoding field "
          "serviceName_ of struct ServiceNameServiceNameResponseParams: $e";
      rethrow;
    }
  }

  String toString() {
    return "ServiceNameServiceNameResponseParams("
           "serviceName_: $serviceName_" ")";
  }

  Map toJson() {
    Map map = new Map();
    map["serviceName_"] = serviceName_;
    return map;
  }
}

const int _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName = 0;
const int _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName = 1;

class _CheckMethodWithEmptyResponseServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class CheckMethodWithEmptyResponse {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _CheckMethodWithEmptyResponseServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static CheckMethodWithEmptyResponseProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    CheckMethodWithEmptyResponseProxy p = new CheckMethodWithEmptyResponseProxy.unbound();
    String name = serviceName ?? CheckMethodWithEmptyResponse.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  dynamic withoutParameterAndEmptyResponse([Function responseFactory = null]);
  dynamic withParameterAndEmptyResponse(bool b,[Function responseFactory = null]);
}

abstract class CheckMethodWithEmptyResponseInterface
    implements bindings.MojoInterface<CheckMethodWithEmptyResponse>,
               CheckMethodWithEmptyResponse {
  factory CheckMethodWithEmptyResponseInterface([CheckMethodWithEmptyResponse impl]) =>
      new CheckMethodWithEmptyResponseStub.unbound(impl);
  factory CheckMethodWithEmptyResponseInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [CheckMethodWithEmptyResponse impl]) =>
      new CheckMethodWithEmptyResponseStub.fromEndpoint(endpoint, impl);
}

abstract class CheckMethodWithEmptyResponseInterfaceRequest
    implements bindings.MojoInterface<CheckMethodWithEmptyResponse>,
               CheckMethodWithEmptyResponse {
  factory CheckMethodWithEmptyResponseInterfaceRequest() =>
      new CheckMethodWithEmptyResponseProxy.unbound();
}

class _CheckMethodWithEmptyResponseProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<CheckMethodWithEmptyResponse> {
  _CheckMethodWithEmptyResponseProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _CheckMethodWithEmptyResponseProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _CheckMethodWithEmptyResponseProxyControl.unbound() : super.unbound();

  String get serviceName => CheckMethodWithEmptyResponse.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName:
        var r = CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      case _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName:
        var r = CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  CheckMethodWithEmptyResponse get impl => null;
  set impl(CheckMethodWithEmptyResponse _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_CheckMethodWithEmptyResponseProxyControl($superString)";
  }
}

class CheckMethodWithEmptyResponseProxy
    extends bindings.Proxy<CheckMethodWithEmptyResponse>
    implements CheckMethodWithEmptyResponse,
               CheckMethodWithEmptyResponseInterface,
               CheckMethodWithEmptyResponseInterfaceRequest {
  CheckMethodWithEmptyResponseProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _CheckMethodWithEmptyResponseProxyControl.fromEndpoint(endpoint));

  CheckMethodWithEmptyResponseProxy.fromHandle(core.MojoHandle handle)
      : super(new _CheckMethodWithEmptyResponseProxyControl.fromHandle(handle));

  CheckMethodWithEmptyResponseProxy.unbound()
      : super(new _CheckMethodWithEmptyResponseProxyControl.unbound());

  static CheckMethodWithEmptyResponseProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckMethodWithEmptyResponseProxy"));
    return new CheckMethodWithEmptyResponseProxy.fromEndpoint(endpoint);
  }


  dynamic withoutParameterAndEmptyResponse([Function responseFactory = null]) {
    var params = new _CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseParams();
    return ctrl.sendMessageWithRequestId(
        params,
        _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
  dynamic withParameterAndEmptyResponse(bool b,[Function responseFactory = null]) {
    var params = new _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams();
    params.b = b;
    return ctrl.sendMessageWithRequestId(
        params,
        _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
}

class _CheckMethodWithEmptyResponseStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<CheckMethodWithEmptyResponse> {
  CheckMethodWithEmptyResponse _impl;

  _CheckMethodWithEmptyResponseStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckMethodWithEmptyResponse impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckMethodWithEmptyResponseStubControl.fromHandle(
      core.MojoHandle handle, [CheckMethodWithEmptyResponse impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckMethodWithEmptyResponseStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => CheckMethodWithEmptyResponse.serviceName;


  CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams _checkMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParamsFactory() {
    var result = new CheckMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParams();
    return result;
  }
  CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams _checkMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParamsFactory() {
    var result = new CheckMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParams();
    return result;
  }

  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName:
        var response = _impl.withoutParameterAndEmptyResponse(_checkMethodWithEmptyResponseWithoutParameterAndEmptyResponseResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _checkMethodWithEmptyResponseMethodWithoutParameterAndEmptyResponseName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      case _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName:
        var params = _CheckMethodWithEmptyResponseWithParameterAndEmptyResponseParams.deserialize(
            message.payload);
        var response = _impl.withParameterAndEmptyResponse(params.b,_checkMethodWithEmptyResponseWithParameterAndEmptyResponseResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _checkMethodWithEmptyResponseMethodWithParameterAndEmptyResponseName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  CheckMethodWithEmptyResponse get impl => _impl;
  set impl(CheckMethodWithEmptyResponse d) {
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
    return "_CheckMethodWithEmptyResponseStubControl($superString)";
  }

  int get version => 0;
}

class CheckMethodWithEmptyResponseStub
    extends bindings.Stub<CheckMethodWithEmptyResponse>
    implements CheckMethodWithEmptyResponse,
               CheckMethodWithEmptyResponseInterface,
               CheckMethodWithEmptyResponseInterfaceRequest {
  CheckMethodWithEmptyResponseStub.unbound([CheckMethodWithEmptyResponse impl])
      : super(new _CheckMethodWithEmptyResponseStubControl.unbound(impl));

  CheckMethodWithEmptyResponseStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckMethodWithEmptyResponse impl])
      : super(new _CheckMethodWithEmptyResponseStubControl.fromEndpoint(endpoint, impl));

  CheckMethodWithEmptyResponseStub.fromHandle(
      core.MojoHandle handle, [CheckMethodWithEmptyResponse impl])
      : super(new _CheckMethodWithEmptyResponseStubControl.fromHandle(handle, impl));

  static CheckMethodWithEmptyResponseStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckMethodWithEmptyResponseStub"));
    return new CheckMethodWithEmptyResponseStub.fromEndpoint(endpoint);
  }


  dynamic withoutParameterAndEmptyResponse([Function responseFactory = null]) {
    return impl.withoutParameterAndEmptyResponse(responseFactory);
  }
  dynamic withParameterAndEmptyResponse(bool b,[Function responseFactory = null]) {
    return impl.withParameterAndEmptyResponse(b,responseFactory);
  }
}

const int _checkNameCollisionMethodWithNameCollisionName = 0;

class _CheckNameCollisionServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class CheckNameCollision {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _CheckNameCollisionServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static CheckNameCollisionProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    CheckNameCollisionProxy p = new CheckNameCollisionProxy.unbound();
    String name = serviceName ?? CheckNameCollision.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  dynamic withNameCollision(bool message,bool response,[Function responseFactory = null]);
}

abstract class CheckNameCollisionInterface
    implements bindings.MojoInterface<CheckNameCollision>,
               CheckNameCollision {
  factory CheckNameCollisionInterface([CheckNameCollision impl]) =>
      new CheckNameCollisionStub.unbound(impl);
  factory CheckNameCollisionInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [CheckNameCollision impl]) =>
      new CheckNameCollisionStub.fromEndpoint(endpoint, impl);
}

abstract class CheckNameCollisionInterfaceRequest
    implements bindings.MojoInterface<CheckNameCollision>,
               CheckNameCollision {
  factory CheckNameCollisionInterfaceRequest() =>
      new CheckNameCollisionProxy.unbound();
}

class _CheckNameCollisionProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<CheckNameCollision> {
  _CheckNameCollisionProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _CheckNameCollisionProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _CheckNameCollisionProxyControl.unbound() : super.unbound();

  String get serviceName => CheckNameCollision.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _checkNameCollisionMethodWithNameCollisionName:
        var r = CheckNameCollisionWithNameCollisionResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  CheckNameCollision get impl => null;
  set impl(CheckNameCollision _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_CheckNameCollisionProxyControl($superString)";
  }
}

class CheckNameCollisionProxy
    extends bindings.Proxy<CheckNameCollision>
    implements CheckNameCollision,
               CheckNameCollisionInterface,
               CheckNameCollisionInterfaceRequest {
  CheckNameCollisionProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _CheckNameCollisionProxyControl.fromEndpoint(endpoint));

  CheckNameCollisionProxy.fromHandle(core.MojoHandle handle)
      : super(new _CheckNameCollisionProxyControl.fromHandle(handle));

  CheckNameCollisionProxy.unbound()
      : super(new _CheckNameCollisionProxyControl.unbound());

  static CheckNameCollisionProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckNameCollisionProxy"));
    return new CheckNameCollisionProxy.fromEndpoint(endpoint);
  }


  dynamic withNameCollision(bool message,bool response,[Function responseFactory = null]) {
    var params = new _CheckNameCollisionWithNameCollisionParams();
    params.message = message;
    params.response = response;
    return ctrl.sendMessageWithRequestId(
        params,
        _checkNameCollisionMethodWithNameCollisionName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
}

class _CheckNameCollisionStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<CheckNameCollision> {
  CheckNameCollision _impl;

  _CheckNameCollisionStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckNameCollision impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckNameCollisionStubControl.fromHandle(
      core.MojoHandle handle, [CheckNameCollision impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckNameCollisionStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => CheckNameCollision.serviceName;


  CheckNameCollisionWithNameCollisionResponseParams _checkNameCollisionWithNameCollisionResponseParamsFactory(bool message, bool response) {
    var result = new CheckNameCollisionWithNameCollisionResponseParams();
    result.message = message;
    result.response = response;
    return result;
  }

  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _checkNameCollisionMethodWithNameCollisionName:
        var params = _CheckNameCollisionWithNameCollisionParams.deserialize(
            message.payload);
        var response = _impl.withNameCollision(params.message,params.response,_checkNameCollisionWithNameCollisionResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _checkNameCollisionMethodWithNameCollisionName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _checkNameCollisionMethodWithNameCollisionName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  CheckNameCollision get impl => _impl;
  set impl(CheckNameCollision d) {
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
    return "_CheckNameCollisionStubControl($superString)";
  }

  int get version => 0;
}

class CheckNameCollisionStub
    extends bindings.Stub<CheckNameCollision>
    implements CheckNameCollision,
               CheckNameCollisionInterface,
               CheckNameCollisionInterfaceRequest {
  CheckNameCollisionStub.unbound([CheckNameCollision impl])
      : super(new _CheckNameCollisionStubControl.unbound(impl));

  CheckNameCollisionStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckNameCollision impl])
      : super(new _CheckNameCollisionStubControl.fromEndpoint(endpoint, impl));

  CheckNameCollisionStub.fromHandle(
      core.MojoHandle handle, [CheckNameCollision impl])
      : super(new _CheckNameCollisionStubControl.fromHandle(handle, impl));

  static CheckNameCollisionStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckNameCollisionStub"));
    return new CheckNameCollisionStub.fromEndpoint(endpoint);
  }


  dynamic withNameCollision(bool message,bool response,[Function responseFactory = null]) {
    return impl.withNameCollision(message,response,responseFactory);
  }
}

const int _checkEnumCapsMethodSetEnumWithInternalAllCapsName = 0;

class _CheckEnumCapsServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class CheckEnumCaps {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _CheckEnumCapsServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static CheckEnumCapsProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    CheckEnumCapsProxy p = new CheckEnumCapsProxy.unbound();
    String name = serviceName ?? CheckEnumCaps.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void setEnumWithInternalAllCaps(EnumWithInternalAllCaps e);
}

abstract class CheckEnumCapsInterface
    implements bindings.MojoInterface<CheckEnumCaps>,
               CheckEnumCaps {
  factory CheckEnumCapsInterface([CheckEnumCaps impl]) =>
      new CheckEnumCapsStub.unbound(impl);
  factory CheckEnumCapsInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [CheckEnumCaps impl]) =>
      new CheckEnumCapsStub.fromEndpoint(endpoint, impl);
}

abstract class CheckEnumCapsInterfaceRequest
    implements bindings.MojoInterface<CheckEnumCaps>,
               CheckEnumCaps {
  factory CheckEnumCapsInterfaceRequest() =>
      new CheckEnumCapsProxy.unbound();
}

class _CheckEnumCapsProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<CheckEnumCaps> {
  _CheckEnumCapsProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _CheckEnumCapsProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _CheckEnumCapsProxyControl.unbound() : super.unbound();

  String get serviceName => CheckEnumCaps.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  CheckEnumCaps get impl => null;
  set impl(CheckEnumCaps _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_CheckEnumCapsProxyControl($superString)";
  }
}

class CheckEnumCapsProxy
    extends bindings.Proxy<CheckEnumCaps>
    implements CheckEnumCaps,
               CheckEnumCapsInterface,
               CheckEnumCapsInterfaceRequest {
  CheckEnumCapsProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _CheckEnumCapsProxyControl.fromEndpoint(endpoint));

  CheckEnumCapsProxy.fromHandle(core.MojoHandle handle)
      : super(new _CheckEnumCapsProxyControl.fromHandle(handle));

  CheckEnumCapsProxy.unbound()
      : super(new _CheckEnumCapsProxyControl.unbound());

  static CheckEnumCapsProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckEnumCapsProxy"));
    return new CheckEnumCapsProxy.fromEndpoint(endpoint);
  }


  void setEnumWithInternalAllCaps(EnumWithInternalAllCaps e) {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _CheckEnumCapsSetEnumWithInternalAllCapsParams();
    params.e = e;
    ctrl.sendMessage(params,
        _checkEnumCapsMethodSetEnumWithInternalAllCapsName);
  }
}

class _CheckEnumCapsStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<CheckEnumCaps> {
  CheckEnumCaps _impl;

  _CheckEnumCapsStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckEnumCaps impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckEnumCapsStubControl.fromHandle(
      core.MojoHandle handle, [CheckEnumCaps impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _CheckEnumCapsStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => CheckEnumCaps.serviceName;



  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _checkEnumCapsMethodSetEnumWithInternalAllCapsName:
        var params = _CheckEnumCapsSetEnumWithInternalAllCapsParams.deserialize(
            message.payload);
        _impl.setEnumWithInternalAllCaps(params.e);
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  CheckEnumCaps get impl => _impl;
  set impl(CheckEnumCaps d) {
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
    return "_CheckEnumCapsStubControl($superString)";
  }

  int get version => 0;
}

class CheckEnumCapsStub
    extends bindings.Stub<CheckEnumCaps>
    implements CheckEnumCaps,
               CheckEnumCapsInterface,
               CheckEnumCapsInterfaceRequest {
  CheckEnumCapsStub.unbound([CheckEnumCaps impl])
      : super(new _CheckEnumCapsStubControl.unbound(impl));

  CheckEnumCapsStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [CheckEnumCaps impl])
      : super(new _CheckEnumCapsStubControl.fromEndpoint(endpoint, impl));

  CheckEnumCapsStub.fromHandle(
      core.MojoHandle handle, [CheckEnumCaps impl])
      : super(new _CheckEnumCapsStubControl.fromHandle(handle, impl));

  static CheckEnumCapsStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For CheckEnumCapsStub"));
    return new CheckEnumCapsStub.fromEndpoint(endpoint);
  }


  void setEnumWithInternalAllCaps(EnumWithInternalAllCaps e) {
    return impl.setEnumWithInternalAllCaps(e);
  }
}

const int _testInterfaceMethodSomeMessageName = 0;

class _TestInterfaceServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class TestInterface {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _TestInterfaceServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static TestInterfaceProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    TestInterfaceProxy p = new TestInterfaceProxy.unbound();
    String name = serviceName ?? TestInterface.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  void someMessage();
}

abstract class TestInterfaceInterface
    implements bindings.MojoInterface<TestInterface>,
               TestInterface {
  factory TestInterfaceInterface([TestInterface impl]) =>
      new TestInterfaceStub.unbound(impl);
  factory TestInterfaceInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [TestInterface impl]) =>
      new TestInterfaceStub.fromEndpoint(endpoint, impl);
}

abstract class TestInterfaceInterfaceRequest
    implements bindings.MojoInterface<TestInterface>,
               TestInterface {
  factory TestInterfaceInterfaceRequest() =>
      new TestInterfaceProxy.unbound();
}

class _TestInterfaceProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<TestInterface> {
  _TestInterfaceProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _TestInterfaceProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _TestInterfaceProxyControl.unbound() : super.unbound();

  String get serviceName => TestInterface.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  TestInterface get impl => null;
  set impl(TestInterface _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_TestInterfaceProxyControl($superString)";
  }
}

class TestInterfaceProxy
    extends bindings.Proxy<TestInterface>
    implements TestInterface,
               TestInterfaceInterface,
               TestInterfaceInterfaceRequest {
  TestInterfaceProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _TestInterfaceProxyControl.fromEndpoint(endpoint));

  TestInterfaceProxy.fromHandle(core.MojoHandle handle)
      : super(new _TestInterfaceProxyControl.fromHandle(handle));

  TestInterfaceProxy.unbound()
      : super(new _TestInterfaceProxyControl.unbound());

  static TestInterfaceProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For TestInterfaceProxy"));
    return new TestInterfaceProxy.fromEndpoint(endpoint);
  }


  void someMessage() {
    if (!ctrl.isBound) {
      ctrl.proxyError("The Proxy is closed.");
      return;
    }
    var params = new _TestInterfaceSomeMessageParams();
    ctrl.sendMessage(params,
        _testInterfaceMethodSomeMessageName);
  }
}

class _TestInterfaceStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<TestInterface> {
  TestInterface _impl;

  _TestInterfaceStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [TestInterface impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _TestInterfaceStubControl.fromHandle(
      core.MojoHandle handle, [TestInterface impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _TestInterfaceStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => TestInterface.serviceName;



  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _testInterfaceMethodSomeMessageName:
        _impl.someMessage();
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  TestInterface get impl => _impl;
  set impl(TestInterface d) {
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
    return "_TestInterfaceStubControl($superString)";
  }

  int get version => 0;
}

class TestInterfaceStub
    extends bindings.Stub<TestInterface>
    implements TestInterface,
               TestInterfaceInterface,
               TestInterfaceInterfaceRequest {
  TestInterfaceStub.unbound([TestInterface impl])
      : super(new _TestInterfaceStubControl.unbound(impl));

  TestInterfaceStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [TestInterface impl])
      : super(new _TestInterfaceStubControl.fromEndpoint(endpoint, impl));

  TestInterfaceStub.fromHandle(
      core.MojoHandle handle, [TestInterface impl])
      : super(new _TestInterfaceStubControl.fromHandle(handle, impl));

  static TestInterfaceStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For TestInterfaceStub"));
    return new TestInterfaceStub.fromEndpoint(endpoint);
  }


  void someMessage() {
    return impl.someMessage();
  }
}

const int _regression551MethodGetName = 0;

class _Regression551ServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class Regression551 {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _Regression551ServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static Regression551Proxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    Regression551Proxy p = new Regression551Proxy.unbound();
    String name = serviceName ?? Regression551.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  dynamic get(List<String> keyPrefixes,[Function responseFactory = null]);
}

abstract class Regression551Interface
    implements bindings.MojoInterface<Regression551>,
               Regression551 {
  factory Regression551Interface([Regression551 impl]) =>
      new Regression551Stub.unbound(impl);
  factory Regression551Interface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [Regression551 impl]) =>
      new Regression551Stub.fromEndpoint(endpoint, impl);
}

abstract class Regression551InterfaceRequest
    implements bindings.MojoInterface<Regression551>,
               Regression551 {
  factory Regression551InterfaceRequest() =>
      new Regression551Proxy.unbound();
}

class _Regression551ProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<Regression551> {
  _Regression551ProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _Regression551ProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _Regression551ProxyControl.unbound() : super.unbound();

  String get serviceName => Regression551.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _regression551MethodGetName:
        var r = Regression551GetResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  Regression551 get impl => null;
  set impl(Regression551 _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_Regression551ProxyControl($superString)";
  }
}

class Regression551Proxy
    extends bindings.Proxy<Regression551>
    implements Regression551,
               Regression551Interface,
               Regression551InterfaceRequest {
  Regression551Proxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _Regression551ProxyControl.fromEndpoint(endpoint));

  Regression551Proxy.fromHandle(core.MojoHandle handle)
      : super(new _Regression551ProxyControl.fromHandle(handle));

  Regression551Proxy.unbound()
      : super(new _Regression551ProxyControl.unbound());

  static Regression551Proxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For Regression551Proxy"));
    return new Regression551Proxy.fromEndpoint(endpoint);
  }


  dynamic get(List<String> keyPrefixes,[Function responseFactory = null]) {
    var params = new _Regression551GetParams();
    params.keyPrefixes = keyPrefixes;
    return ctrl.sendMessageWithRequestId(
        params,
        _regression551MethodGetName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
}

class _Regression551StubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<Regression551> {
  Regression551 _impl;

  _Regression551StubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Regression551 impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _Regression551StubControl.fromHandle(
      core.MojoHandle handle, [Regression551 impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _Regression551StubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => Regression551.serviceName;


  Regression551GetResponseParams _regression551GetResponseParamsFactory(int result) {
    var result = new Regression551GetResponseParams();
    result.result = result;
    return result;
  }

  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _regression551MethodGetName:
        var params = _Regression551GetParams.deserialize(
            message.payload);
        var response = _impl.get(params.keyPrefixes,_regression551GetResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _regression551MethodGetName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _regression551MethodGetName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  Regression551 get impl => _impl;
  set impl(Regression551 d) {
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
    return "_Regression551StubControl($superString)";
  }

  int get version => 0;
}

class Regression551Stub
    extends bindings.Stub<Regression551>
    implements Regression551,
               Regression551Interface,
               Regression551InterfaceRequest {
  Regression551Stub.unbound([Regression551 impl])
      : super(new _Regression551StubControl.unbound(impl));

  Regression551Stub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [Regression551 impl])
      : super(new _Regression551StubControl.fromEndpoint(endpoint, impl));

  Regression551Stub.fromHandle(
      core.MojoHandle handle, [Regression551 impl])
      : super(new _Regression551StubControl.fromHandle(handle, impl));

  static Regression551Stub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For Regression551Stub"));
    return new Regression551Stub.fromEndpoint(endpoint);
  }


  dynamic get(List<String> keyPrefixes,[Function responseFactory = null]) {
    return impl.get(keyPrefixes,responseFactory);
  }
}

const int _serviceNameMethodServiceNameName = 0;

class _ServiceNameServiceDescription implements service_describer.ServiceDescription {
  dynamic getTopLevelInterface([Function responseFactory]) =>
      responseFactory(null);

  dynamic getTypeDefinition(String typeKey, [Function responseFactory]) =>
      responseFactory(null);

  dynamic getAllTypeDefinitions([Function responseFactory]) =>
      responseFactory(null);
}

abstract class ServiceName {
  static const String serviceName = null;

  static service_describer.ServiceDescription _cachedServiceDescription;
  static service_describer.ServiceDescription get serviceDescription {
    if (_cachedServiceDescription == null) {
      _cachedServiceDescription = new _ServiceNameServiceDescription();
    }
    return _cachedServiceDescription;
  }

  static ServiceNameProxy connectToService(
      bindings.ServiceConnector s, String url, [String serviceName]) {
    ServiceNameProxy p = new ServiceNameProxy.unbound();
    String name = serviceName ?? ServiceName.serviceName;
    if ((name == null) || name.isEmpty) {
      throw new core.MojoApiError(
          "If an interface has no ServiceName, then one must be provided.");
    }
    s.connectToService(url, p, name);
    return p;
  }
  dynamic serviceName_([Function responseFactory = null]);
}

abstract class ServiceNameInterface
    implements bindings.MojoInterface<ServiceName>,
               ServiceName {
  factory ServiceNameInterface([ServiceName impl]) =>
      new ServiceNameStub.unbound(impl);
  factory ServiceNameInterface.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint,
      [ServiceName impl]) =>
      new ServiceNameStub.fromEndpoint(endpoint, impl);
}

abstract class ServiceNameInterfaceRequest
    implements bindings.MojoInterface<ServiceName>,
               ServiceName {
  factory ServiceNameInterfaceRequest() =>
      new ServiceNameProxy.unbound();
}

class _ServiceNameProxyControl
    extends bindings.ProxyMessageHandler
    implements bindings.ProxyControl<ServiceName> {
  _ServiceNameProxyControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) : super.fromEndpoint(endpoint);

  _ServiceNameProxyControl.fromHandle(
      core.MojoHandle handle) : super.fromHandle(handle);

  _ServiceNameProxyControl.unbound() : super.unbound();

  String get serviceName => ServiceName.serviceName;

  void handleResponse(bindings.ServiceMessage message) {
    switch (message.header.type) {
      case _serviceNameMethodServiceNameName:
        var r = ServiceNameServiceNameResponseParams.deserialize(
            message.payload);
        if (!message.header.hasRequestId) {
          proxyError("Expected a message with a valid request Id.");
          return;
        }
        Completer c = completerMap[message.header.requestId];
        if (c == null) {
          proxyError(
              "Message had unknown request Id: ${message.header.requestId}");
          return;
        }
        completerMap.remove(message.header.requestId);
        if (c.isCompleted) {
          proxyError("Response completer already completed");
          return;
        }
        c.complete(r);
        break;
      default:
        proxyError("Unexpected message type: ${message.header.type}");
        close(immediate: true);
        break;
    }
  }

  ServiceName get impl => null;
  set impl(ServiceName _) {
    throw new core.MojoApiError("The impl of a Proxy cannot be set.");
  }

  @override
  String toString() {
    var superString = super.toString();
    return "_ServiceNameProxyControl($superString)";
  }
}

class ServiceNameProxy
    extends bindings.Proxy<ServiceName>
    implements ServiceName,
               ServiceNameInterface,
               ServiceNameInterfaceRequest {
  ServiceNameProxy.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint)
      : super(new _ServiceNameProxyControl.fromEndpoint(endpoint));

  ServiceNameProxy.fromHandle(core.MojoHandle handle)
      : super(new _ServiceNameProxyControl.fromHandle(handle));

  ServiceNameProxy.unbound()
      : super(new _ServiceNameProxyControl.unbound());

  static ServiceNameProxy newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ServiceNameProxy"));
    return new ServiceNameProxy.fromEndpoint(endpoint);
  }


  dynamic serviceName_([Function responseFactory = null]) {
    var params = new _ServiceNameServiceNameParams();
    return ctrl.sendMessageWithRequestId(
        params,
        _serviceNameMethodServiceNameName,
        -1,
        bindings.MessageHeader.kMessageExpectsResponse);
  }
}

class _ServiceNameStubControl
    extends bindings.StubMessageHandler
    implements bindings.StubControl<ServiceName> {
  ServiceName _impl;

  _ServiceNameStubControl.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [ServiceName impl])
      : super.fromEndpoint(endpoint, autoBegin: impl != null) {
    _impl = impl;
  }

  _ServiceNameStubControl.fromHandle(
      core.MojoHandle handle, [ServiceName impl])
      : super.fromHandle(handle, autoBegin: impl != null) {
    _impl = impl;
  }

  _ServiceNameStubControl.unbound([this._impl]) : super.unbound();

  String get serviceName => ServiceName.serviceName;


  ServiceNameServiceNameResponseParams _serviceNameServiceNameResponseParamsFactory(String serviceName_) {
    var result = new ServiceNameServiceNameResponseParams();
    result.serviceName_ = serviceName_;
    return result;
  }

  dynamic handleMessage(bindings.ServiceMessage message) {
    if (bindings.ControlMessageHandler.isControlMessage(message)) {
      return bindings.ControlMessageHandler.handleMessage(this,
                                                          0,
                                                          message);
    }
    if (_impl == null) {
      throw new core.MojoApiError("$this has no implementation set");
    }
    switch (message.header.type) {
      case _serviceNameMethodServiceNameName:
        var response = _impl.serviceName_(_serviceNameServiceNameResponseParamsFactory);
        if (response is Future) {
          return response.then((response) {
            if (response != null) {
              return buildResponseWithId(
                  response,
                  _serviceNameMethodServiceNameName,
                  message.header.requestId,
                  bindings.MessageHeader.kMessageIsResponse);
            }
          });
        } else if (response != null) {
          return buildResponseWithId(
              response,
              _serviceNameMethodServiceNameName,
              message.header.requestId,
              bindings.MessageHeader.kMessageIsResponse);
        }
        break;
      default:
        throw new bindings.MojoCodecError("Unexpected message name");
        break;
    }
    return null;
  }

  ServiceName get impl => _impl;
  set impl(ServiceName d) {
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
    return "_ServiceNameStubControl($superString)";
  }

  int get version => 0;
}

class ServiceNameStub
    extends bindings.Stub<ServiceName>
    implements ServiceName,
               ServiceNameInterface,
               ServiceNameInterfaceRequest {
  ServiceNameStub.unbound([ServiceName impl])
      : super(new _ServiceNameStubControl.unbound(impl));

  ServiceNameStub.fromEndpoint(
      core.MojoMessagePipeEndpoint endpoint, [ServiceName impl])
      : super(new _ServiceNameStubControl.fromEndpoint(endpoint, impl));

  ServiceNameStub.fromHandle(
      core.MojoHandle handle, [ServiceName impl])
      : super(new _ServiceNameStubControl.fromHandle(handle, impl));

  static ServiceNameStub newFromEndpoint(
      core.MojoMessagePipeEndpoint endpoint) {
    assert(endpoint.setDescription("For ServiceNameStub"));
    return new ServiceNameStub.fromEndpoint(endpoint);
  }


  dynamic serviceName_([Function responseFactory = null]) {
    return impl.serviceName_(responseFactory);
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
  var serializedRuntimeTypeInfo = "H4sIAAAJbogC/+xdS3cbtxXGUHIsP5LIbZzIcao4dpuosU1JtuUwTpuIkqhHJZE6JOXIp+mhaWokMuKrQyqVd15q2WV/QpdeetmfkJ+QpZdZatcCnAtxcDmYwdDDmaFVnoMDD4XLAT7cBy7uBTxBzM841DNQ4+95PYZq3G7rnFm/ouVDWl7C9z9D/SvUNzSzXoX6BdQvof4FahIzqymon0J9DPUrqF9DPTFi1vNQl6H+J9Q/Qz02Cu+Hugn1LVqu05J/spUqrKeePDL0fUNvtSqNeqGtt9qteFKx3UKn3X1abju2WyzW9OpisaXn6WOqfljr0E3T8oUzXVkvHbD2i8Vmi3xL2z50b7+pt8uN3e8r7XKq1mw/z+qtZqPe0gl5QGnvuNOnaWcXG9Vqhf2B9XOOlrvOdI16u1ipt5KGUXye2YMRfk7LpCNdandfN3/7D87t2EBybeOw1KbtvqZl1rk97QADYC2dT2XTyY1ktdpB0Pzchrl1p19XnF/efqPxD90oFRnY0Mc/KtGlD2vPdIP3T/19WX1PN/R6yXwfm9vfO9KlG0atWOUM6M5/2dMv5uZmFeYppxs/VUo64yDaboWW75zbd6aUjQQ4Z7VY363qrcVitarvwkPnN75S/B2TRqRnUvpIkX6t3taNvWIJ/YSivDLxPv0FMsV0oGP7x7rR1o/KmqlHmX5lKnFH6+pb9s/XI6L+PXqn+8z+dPKB+Dz+sfh8fEv8vRd3xOfytPh8MovsxX3xmSTE58Qj8fk/f0bt58XnqSWxfy9WxOettNifsbz4/PKx+Dz1RKQnP6DxFcAeIXt2QkR7M0/Ez4w4XPJf+KwS+88FeF8Sntk0/IYWiXkhdnb5PC1/o2Wb8Vu5UdOnjcPdRq1S143pWuPHxnTLKJn/aB4+q1ZK0xXObq3pZ5X6bqW+35ruvGW657WMrGbFVZye03Gyv5+z2HG3jww3YsGtM+8uuD2TrDdmoT+DxoXzh4beP4H6uUCIp/UBxnvCMnbN8p6g+HPBjT8X7OfhwRnnz6KEP+cixp9J4m2dq8qfPf6C5ozvKuLLsgTfa7RcocV+lUzIl7TctONTCQHuZymg+XlKyyVmv4no7/w7JvolJ+CH3AA7vnoe/BOYgH9dADt6EfyeS2A3kZ7wyu/zivPBdAJ79UIms1HIr66lV7p8fldpHuICKZ6PXXD5Bj0fbnhpPuHFll+XaVnKbC9spLqIfQVrRgW8BFKMlx4RvGI+4fVbkJPljUwyb2Ew5tvG1fASSDFeexHBa8RneaTebKJPeRRIMV77EcFr1H+8Zh/2jVeXFONVjghe53yWRzro+/col8x6l0eBFONViQhe7/iP18MHhXx5tr7fB15dUozXjxHB67zPeG0zLZQv9IOXQIrxOogIXmM+rye2O1qoTUfteT0hkGK8qhHB68IA8DK1kMlgHvE6JcV41SKC18UB4MW00Gp//HVKivGqh4zXmNafP7QjwesqLe8y/1SIxnTjGy5hmx58voW5HDQ+E5J9gssW38fO/8e4nrzhvsq8hP4m7EHl9LZjwAaP47uA+Eu2H3ccUx+/034c39eQj/+uof/9kPbJHgf+Oav7cTqR88dcgPxB0Pt5vz+l5SNaZMz9pnFM1X07mZ6cUtSTW4ifjyTzwmKPn3A9KY1CO/lhzoR4ni+GrEfHLXsiGnwfs7Q7HnHWpzzfwS99yuONDLvGYXuraFC7TUebrO8KUOLxXApZn54Qf/TpDGDgNn6uVcPSp2MK8mv1JzBup8Zb84bblgQ3nqeggFtXiEO0R17xk8lfYkRtH9iKo+Ygfyw34neAoxREG9wuhyx/Yz6tZ3h+iOP4LUuaKK9nvHwGHf++DLgGjYvXOLVfejwOvpUbH3GBGlY9xD8Tiusw1Xgqj+vbZ/N1898U0/968H1/yPxX7pckRvuT24RL3LqTwdcLs21+bRh6no9/fMSbfMrs3Gcw9p5xi+5qaHKJ1+E4TyEsPf8+7KnXaK+L+7otf1wLAJ9+cNA84qA54DAOsmpI/JFxyLMM097FHOyd3/LE98Hs5Mm64P6/PHmTpyvQ5qzL0xXwS6IqT3z98yrmz/rnOsQc7U8ldPPkFY8x9PDV9xHKg4w57M/3K28zEnqWo/4ey4Nk8BQaewWdAmQT39iBGFOQ+6+s73wfekyyzsb8x/NExFMR3s9RRCW/9zLk0JinakyZv2rH59AAz9vn5Gzn9/4kWbd+EZC/cwPZBuz3vAc5LOapEaJ8vqRf/uRx1DHNnzgqzwMRT3N14wYux7565iUeEL969fMHlSftFk/i+9+qYSTczwQJLo99xILTPODTjDnvk6jKfUIRT75uyuWT6aVkdonH41Txi3NCybx/TYYzz7npkle5vL2xkVvMplJwTusbYp5ZVMYN/QDG7REZznxnGW5XwMasbW6msrm1xynLOO95wQ39AMbtm4Bw6/FDfbIPHCfx9G3XP3Y5ptvTr5sB6TO3/cdxO6fPg/7aclm3rKP4uxyn+LodTrcC4pvT85kDtpN8X9b+VLbDeSIJAe7ntYD4Cu+7JDR/7KNqniCXx61qsV40lmcfwvf8HgF3/OICKcbxY/J2nQNCeN2/1zdeJinG6/qQ6/ePYD8O33rA/Ri36xFwvyYjpt+5nzTqUb/L8HoXxndQuFeYtcRF3XCKAwHG69OA9fxowHpevA1DQc8jAtzPD0LS82XNmc+4HZj0mLd37BLPOyjk6HozlSlQr4btJyxkqG9T2FxbhHbMz/mTEp5xx5/COF8NmC8nHeQ4ZpHjSd/leDO5Y8lTU8KRkmC8Pgwpjpzok2/6vc9mUHZItu/Lz8u7bPf29Csbkp6Y0gazX+LGx8tr2VwecgY/c8Yrztva4ZYbkvWfKj58fzaXWsyklxzsjwUf3tYOnzx5O8/RiLdKOZyjQQ0xPn8dsjykXzheI/7GLy6BXVvR27Z89ENI9oKPd8pjfumMS/yAjlPINIpyHmmQ8Vl+ru9Af15oGvpe5ci8ucyOH8KKz2oonkIc5Ec1TsX57FfNHz7jOJp81s3AiXq+8rmA4qXcztHeHlbb9vx1h0QnXzko+8b1k3gLosO+LGqIcSwMmX17zXGN+avXOK4thCvu99OQ7NxrVKvqn4RL/pJlvJGwd296bonjMx7zB6dPQFeLOA2HvtYCXBd4kZ/rAeHjh93n+2BHLvy0o7gPxs8vqd1KS07vY+7zWtse/JcjllcYVP4Vz+MtAzAYlxX4dxjr1dEBrFf5vs1qzNv+rezcNT936HwLssN9Oy6EeD4WIsSnoxHi00WI/w2L/pxB91Oq8uELCT48jud2m7Y0z0rtGu4e3NNnNG/VjR8zIehNYsNvfN9PvB3d+33qUfP3ZOOS7meihni+/jKk/t6g1qs5OvxNONtjJ/frb5m/ZxnvW+Hvcf+m6dP5Bpz/zvOhJWnvPbh9Sc72+QbZvR23STDn5G6geBu2E7LzAV7/fxhVO/G/AAAA//9AUX0CGGkAAA==";

  // Deserialize RuntimeTypeInfo
  var bytes = BASE64.decode(serializedRuntimeTypeInfo);
  var unzippedBytes = new ZLibDecoder().convert(bytes);
  var bdata = new ByteData.view(unzippedBytes.buffer);
  var message = new bindings.Message(bdata, null, unzippedBytes.length, 0);
  _runtimeTypeInfo = mojom_types.RuntimeTypeInfo.deserialize(message);
  return _runtimeTypeInfo;
}
