// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JuiceGenerator
// **************************************************************************

import "package:juicer_gen_test/sample_classes/something.dart" as jcr_i1;
import "package:juicer_gen_test/sample_classes/different.dart" as jcr_i2;
// ignore_for_file: invalid_use_of_protected_member
import 'package:juicer/juicer_util.dart';
export "package:juicer_gen_test/sample_classes.dart";

// package:juicer_gen_test/sample_classes/something.dart Something
// package:juicer_gen_test/sample_classes/different.dart Different
extension SomethingJuicerI1 on jcr_i1.Something {
  Map<String, dynamic> toMap() => removeNullValues({
        "simpleNum": this.simpleNum,
        "sampleDouble": this.sampleDouble,
        "integerDouble": this.integerDouble,
        "completelyDifferent": this.completelyDifferent?.toMap(),
        "rawMap": this.rawMap == null
            ? null
            : Map.fromIterable(this.rawMap.keys, value: (k) => this.rawMap[k]),
        "differentList": this.differentList?.map((e) => e?.toMap())?.toList(),
        "differentIterable":
            this.differentIterable?.map((e) => e?.toMap())?.toList(),
        "intMap": this.intMap == null
            ? null
            : Map.fromIterable(this.intMap.keys, value: (k) => this.intMap[k]),
        "intList": this.intList?.toList(),
        "numList": this.numList?.toList(),
        "getterDecoration": this.b,
        "setterDecoration": this.c,
// ignored1 is ignored
// ignored2 is ignored
      });
  jcr_i1.Something populateFromMap(Map map) {
    if (map.containsKey("simpleNum")) this.simpleNum = map["simpleNum"];
    if (map.containsKey("sampleDouble"))
      this.sampleDouble = map["sampleDouble"]?.toDouble();
    if (map.containsKey("integerDouble"))
      this.integerDouble = map["integerDouble"]?.toDouble();
    if (map.containsKey("completelyDifferent"))
      this.completelyDifferent = map["completelyDifferent"] == null
          ? null
          : jcr_i2.Different.json().populateFromMap(map["completelyDifferent"]);
    if (map.containsKey("rawMap"))
      this.rawMap = map["rawMap"] == null
          ? null
          : Map<String, dynamic>.from(map["rawMap"]);
    if (map.containsKey("differentList"))
      this.differentList = map["differentList"]
          ?.map<jcr_i2.Different>((val) =>
              val == null ? null : jcr_i2.Different.json().populateFromMap(val))
          ?.toList();
    if (map.containsKey("differentIterable"))
      this.differentIterable = map["differentIterable"]
          ?.map<jcr_i2.Different>((val) =>
              val == null ? null : jcr_i2.Different.json().populateFromMap(val))
          ?.toList();
    if (map.containsKey("intMap"))
      this.intMap =
          map["intMap"] == null ? null : Map<String, int>.from(map["intMap"]);
    if (map.containsKey("intList"))
      this.intList =
          map["intList"]?.map<int>((val) => (val as num)?.toInt())?.toList();
    if (map.containsKey("numList"))
      this.numList = map["numList"]?.map<num>((val) => val as num)?.toList();
    if (map.containsKey("getterDecoration"))
      this.b = map["getterDecoration"]?.toInt();
    if (map.containsKey("setterDecoration"))
      this.c = map["setterDecoration"]?.toInt();
// ignored1 is ignored
// ignored2 is ignored
    return this;
  }
}

extension DifferentJuicerI2 on jcr_i2.Different {
  Map<String, dynamic> toMap() => removeNullValues({
        "fooString": this.fooString,
        "something": this.something?.toMap(),
        "deep": this.deep == null
            ? null
            : Map.fromIterable(this.deep.keys, value: (k) => this.deep[k]),
        "notSoDeep": this.notSoDeep == null
            ? null
            : Map.fromIterable(this.notSoDeep.keys,
                value: (k) => this.notSoDeep[k]),
        "otherNamedDiffs": this.otherNamedDiffs == null
            ? null
            : Map.fromIterable(this.otherNamedDiffs.keys,
                value: (k) => this.otherNamedDiffs[k]?.toMap()),
        "readOnly": this.readOnly,
// writeOnly is ignored
      });
  jcr_i2.Different populateFromMap(Map map) {
    if (map.containsKey("fooString")) this.fooString = map["fooString"];
    if (map.containsKey("something"))
      this.something = map["something"] == null
          ? null
          : jcr_i1.Something().populateFromMap(map["something"]);
    if (map.containsKey("deep"))
      this.deep =
          map["deep"] == null ? null : Map<String, dynamic>.from(map["deep"]);
    if (map.containsKey("notSoDeep"))
      this.notSoDeep = map["notSoDeep"] == null
          ? null
          : Map<String, Map>.from(map["notSoDeep"]);
    if (map.containsKey("otherNamedDiffs"))
      this.otherNamedDiffs = map["otherNamedDiffs"] == null
          ? null
          : nullSafeMapJsonMapValues(map["otherNamedDiffs"],
              (val) => jcr_i2.Different.json().populateFromMap(val));
// readOnly is ignored
    if (map.containsKey("writeOnly")) this.writeOnly = map["writeOnly"];
    return this;
  }
}
