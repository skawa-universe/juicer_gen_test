import "dart:math";
import "dart:convert";

import "package:test/test.dart";

import "package:juicer_gen_test/sample_classes.dart";

Different createDifferent(int seed) {
  Random random = new Random(seed);
  return new Different(new String.fromCharCodes(new List.generate(
      random.nextInt(8) + 2, (_) => random.nextInt(126 - 32) + 32)))
    ..something = (new Something()..simpleNum = seed)
    ..deep = <String, List<int>>{
      "foo": [1, 2],
      "bar": [3, 4],
      "none": null
    };
}

dynamic recode(dynamic val) => json.decode(json.encode(val));

void matchDifferent(dynamic val, Different expected) {
  if (expected == null) {
    expect(val, isNull);
  } else {
    expect(val["fooString"], expected.fooString);
    matchSomething(val["something"], expected.something);
    expect(val["deep"], expected.deep);
    expect(val["deep"], anyOf(isNull, isNot(same(expected.deep))));
    expect(val["readOnly"], expected.readOnly);
  }
}

void matchDifferentList(dynamic val, Iterable<Different> expected) {
  if (expected == null) {
    expect(val, isNull);
  } else {
    expect(val, TypeMatcher<List>());
    List dl = val;
    List<Different> el = expected is List ? expected : expected.toList();
    expect(dl.length, el.length);
    for (int i = 0; i < el.length; ++i) {
      matchDifferent(dl[i], el[i]);
    }
  }
}

void matchSomething(dynamic val, Something expected) {
  if (expected == null) {
    expect(val, isNull);
  } else {
    expect(val, TypeMatcher<Map>());
    expect(val["integerDouble"], expected.integerDouble);
    expect(val["simpleNum"], expected.simpleNum);
    expect(val["sampleDouble"], expected.sampleDouble);
    matchDifferent(val["completelyDifferent"], expected.completelyDifferent);

    expect(val["rawMap"], expected.rawMap);
    expect(val["rawMap"], anyOf(isNull, isNot(same(expected.rawMap))));
    matchDifferentList(val["differentList"], expected.differentList);
    matchDifferentList(val["differentIterable"], expected.differentIterable);
    expect(val["intMap"], expected.intMap);
    expect(val["intMap"], anyOf(isNull, isNot(same(expected.intMap))));
    expect(val["intList"], expected.intList);
    expect(val["intList"], anyOf(isNull, isNot(same(expected.intList))));
    expect(val["numList"], expected.numList);
    expect(val["numList"], anyOf(isNull, isNot(same(expected.numList))));
    expect(val["getterDecoration"], expected.b);
    expect(val["setterDecoration"], expected.c);
  }
}

Something createSampleSomething() {
  double piToACoupleOfPlaces = 3.141592654;
  return new Something()
    ..sampleDouble = 7.3
    ..integerDouble = 73
    ..simpleNum = piToACoupleOfPlaces
    ..completelyDifferent = createDifferent(3)
    ..rawMap = {
      "one": "alpha",
      "two": 2,
      "three": pi,
      "four": true,
      "five": null,
      "six": [null, true, pi, 2, "alpha"],
    }
    ..differentList = new List.generate(3, (i) => createDifferent(i + 7))
    ..differentIterable = new List.generate(2, (i) => createDifferent(i + 37))
    ..intMap = {
      "alpha": 1,
      "bravo": 2,
      "charlie": 3,
      "delta": 4,
    }
    ..intList = [10, 30, 20, 40]
    ..numList = [-5, 1.23, 0];
}
