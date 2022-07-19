// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JuiceGenerator
// **************************************************************************

import "package:juicer_gen_test/sample_classes/something.dart" as jcr_i1;
import "package:juicer_gen_test/sample_classes/different.dart" as jcr_i2;
import "package:juicer_gen_test/sample_classes/rest.dart" as jcr_i3;
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unnecessary_cast
import 'package:juicer/juicer_util.dart';
export "package:juicer_gen_test/sample_classes.dart";

// package:juicer_gen_test/sample_classes/something.dart Something
// package:juicer_gen_test/sample_classes/different.dart Different
// package:juicer_gen_test/sample_classes/rest.dart Rest
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

  jcr_i1.Something copyWith({
    num simpleNum,
    double sampleDouble,
    double integerDouble,
    jcr_i2.Different completelyDifferent,
    Map<String, dynamic> rawMap,
    List<jcr_i2.Different> differentList,
    Iterable<jcr_i2.Different> differentIterable,
    Map<String, int> intMap,
    List<int> intList,
    List<num> numList,
    int b,
    int c,
  }) =>
      jcr_i1.Something()
        ..simpleNum = simpleNum ?? (this.simpleNum)
        ..sampleDouble = sampleDouble ?? (this.sampleDouble)
        ..integerDouble = integerDouble ?? (this.integerDouble)
        ..completelyDifferent =
            completelyDifferent ?? (this.completelyDifferent?.copyWith())
        ..rawMap = rawMap ??
            (this.rawMap == null
                ? null
                : Map<String, dynamic>.from(this.rawMap))
        ..differentList = differentList ??
            (this
                .differentList
                ?.map<jcr_i2.Different>((val) =>
                    val == null ? null : jcr_i2.Different.json().copyWith())
                ?.toList())
        ..differentIterable = differentIterable ??
            (this
                .differentIterable
                ?.map<jcr_i2.Different>((val) =>
                    val == null ? null : jcr_i2.Different.json().copyWith())
                ?.toList())
        ..intMap = intMap ??
            (this.intMap == null ? null : Map<String, int>.from(this.intMap))
        ..intList = intList ??
            (this.intList?.map<int>((val) => (val as num)?.toInt())?.toList())
        ..numList =
            numList ?? (this.numList?.map<num>((val) => val as num)?.toList())
        ..b = b ?? (this.b)
        ..c = c ?? (this.c);
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

  jcr_i2.Different copyWith({
    String fooString,
    jcr_i1.Something something,
    Map<String, dynamic> deep,
    Map<String, Map> notSoDeep,
    Map<String, jcr_i2.Different> otherNamedDiffs,
  }) =>
      jcr_i2.Different.json()
        ..fooString = fooString ?? (this.fooString)
        ..something = something ?? (this.something?.copyWith())
        ..deep = deep ??
            (this.deep == null ? null : Map<String, dynamic>.from(this.deep))
        ..notSoDeep = notSoDeep ??
            (this.notSoDeep == null
                ? null
                : Map<String, Map>.from(this.notSoDeep))
        ..otherNamedDiffs = otherNamedDiffs ??
            (this.otherNamedDiffs == null
                ? null
                : nullSafeMapJsonMapValues(this.otherNamedDiffs,
                    (val) => jcr_i2.Different.json().copyWith()));
}

extension RestJuicerI3 on jcr_i3.Rest {
  Map<String, dynamic> toMap() => removeNullValues({
        "a": this.a,
        "b": this.b,
// rest is ignored
      });
  jcr_i3.Rest populateFromMap(Map map) {
    Set keysRemaining = map.keys.toSet();
    keysRemaining.remove("a");
    if (map.containsKey("a")) this.a = map["a"]?.toInt();
    keysRemaining.remove("b");
    if (map.containsKey("b")) this.b = map["b"];
    this.rest = {
      for (String key in keysRemaining.whereType<String>()) key: map[key]
    };
    return this;
  }

  jcr_i3.Rest copyWith({
    int a,
    String b,
    Map<String, dynamic> rest,
  }) =>
      jcr_i3.Rest()
        ..a = a ?? (this.a)
        ..b = b ?? (this.b)
        ..rest = rest ??
            (this.rest == null ? null : Map<String, dynamic>.from(this.rest));
}
