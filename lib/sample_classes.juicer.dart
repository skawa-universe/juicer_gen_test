// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JuiceGenerator
// **************************************************************************

import "package:juicer_gen_test/sample_classes/something.dart" as jcr_i1;
import "package:juicer_gen_test/sample_classes/different.dart" as jcr_i2;
import "package:juicer/juicer.dart";
export "package:juicer_gen_test/sample_classes.dart";

// package:juicer_gen_test/sample_classes/something.dart Something
// package:juicer_gen_test/sample_classes/different.dart Different
class _$SomethingJuicer extends ClassMapper<jcr_i1.Something> {
  const _$SomethingJuicer();
  @override
  jcr_i1.Something newInstance() => jcr_i1.Something();
  @override
  Map<String, dynamic> toMap(Juicer juicer, jcr_i1.Something val) =>
      juicer.removeNullValues({
        "simpleNum": val.simpleNum,
        "sampleDouble": val.sampleDouble,
        "integerDouble": val.integerDouble,
        "completelyDifferent": juicer.encode(val.completelyDifferent),
        "rawMap": val.rawMap == null
            ? null
            : new Map.fromIterable(val.rawMap.keys,
                value: (k) => juicer.encode(val.rawMap[k])),
        "differentList": val.differentList?.map(juicer.encode)?.toList(),
        "differentIterable":
            val.differentIterable?.map(juicer.encode)?.toList(),
        "intMap": val.intMap == null
            ? null
            : new Map.fromIterable(val.intMap.keys,
                value: (k) => juicer.encode(val.intMap[k])),
        "getterDecoration": val.b,
        "setterDecoration": val.c,
// ignored1 is ignored
// ignored2 is ignored
      });
  @override
  jcr_i1.Something fromMap(Juicer juicer, Map map, jcr_i1.Something empty) {
    if (map.containsKey("simpleNum")) empty.simpleNum = map["simpleNum"];
    if (map.containsKey("sampleDouble"))
      empty.sampleDouble = map["sampleDouble"]?.toDouble();
    if (map.containsKey("integerDouble"))
      empty.integerDouble = map["integerDouble"]?.toDouble();
    if (map.containsKey("completelyDifferent"))
      empty.completelyDifferent = juicer.decode(
          map["completelyDifferent"], (_) => jcr_i2.Different.json());
    if (map.containsKey("rawMap"))
      empty.rawMap = juicer.decodeMap(map["rawMap"], null, <String, dynamic>{})
          as Map<String, dynamic>;
    if (map.containsKey("differentList"))
      empty.differentList = juicer.decodeIterable(
          map["differentList"],
          (_) => jcr_i2.Different.json(),
          <jcr_i2.Different>[]) as List<jcr_i2.Different>;
    if (map.containsKey("differentIterable"))
      empty.differentIterable = juicer.decodeIterable(
          map["differentIterable"],
          (_) => jcr_i2.Different.json(),
          <jcr_i2.Different>[]) as List<jcr_i2.Different>;
    if (map.containsKey("intMap"))
      empty.intMap = juicer.decodeMap(
              map["intMap"], (dynamic val) => val?.toInt(), <String, int>{})
          as Map<String, int>;
    if (map.containsKey("getterDecoration"))
      empty.b = map["getterDecoration"]?.toInt();
    if (map.containsKey("setterDecoration"))
      empty.c = map["setterDecoration"]?.toInt();
// ignored1 is ignored
// ignored2 is ignored
    return empty;
  }
}

class _$DifferentJuicer extends ClassMapper<jcr_i2.Different> {
  const _$DifferentJuicer();
  @override
  jcr_i2.Different newInstance() => jcr_i2.Different.json();
  @override
  Map<String, dynamic> toMap(Juicer juicer, jcr_i2.Different val) =>
      juicer.removeNullValues({
        "fooString": val.fooString,
        "something": juicer.encode(val.something),
        "deep": val.deep == null
            ? null
            : new Map.fromIterable(val.deep.keys,
                value: (k) => juicer.encode(val.deep[k])),
        "readOnly": val.readOnly,
// writeOnly is ignored
      });
  @override
  jcr_i2.Different fromMap(Juicer juicer, Map map, jcr_i2.Different empty) {
    if (map.containsKey("fooString")) empty.fooString = map["fooString"];
    if (map.containsKey("something"))
      empty.something =
          juicer.decode(map["something"], (_) => jcr_i1.Something());
    if (map.containsKey("deep"))
      empty.deep = juicer.decodeMap(map["deep"], null, <String, dynamic>{})
          as Map<String, dynamic>;
// readOnly is ignored
    if (map.containsKey("writeOnly")) empty.writeOnly = map["writeOnly"];
    return empty;
  }
}

const Juicer juicer = const Juicer(const {
  jcr_i1.Something: const _$SomethingJuicer(),
  jcr_i2.Different: const _$DifferentJuicer(),
});
