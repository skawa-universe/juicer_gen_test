import "dart:convert";

import "package:test/test.dart";

import "package:juicer_gen_test/sample_classes.juicer.dart";

import "sample_gen.dart";

void main() {
  test("Test encoding and decoding using the generated classes", () {
    Something sg = createSampleSomething();
    print(sg.differentList.map((e) => e == null ? 0 : 1).join(","));
    dynamic val = sg.toMap();
    print(json.encode(val));
    matchSomething(val, sg);
    dynamic recoded = recode(sg.toMap());
    Something redecoded = Something().populateFromMap(recoded);
    matchSomething(redecoded.toMap(), sg);
  });
  test("Rest", () {
    const extension = <String, dynamic>{
      "c": ["this", "is"],
      "d": {"not": ["defined", "in"]},
      "e": "the class",
      "f": true,
      "g": null,
    };
    var encoded = <String, dynamic>{
      "a": 7,
      "b": "foo",
    };
    encoded.addAll(extension);
    Rest r = Rest().populateFromMap(encoded);
    expect(r.rest, extension);
  });
  test("copyWith", () {
    Something sg = createSampleSomething();
    List<int> newNumList = [0, 1, 1, 8, 9, 9, 9];
    Something clone = sg.copyWith(simpleNum: 333, numList: newNumList); 
    expect(clone, isNot(same(sg)));
    expect(clone.completelyDifferent, isNot(same(sg.completelyDifferent)));
    expect(clone.completelyDifferent.toMap(), sg.completelyDifferent.toMap());
    expect(clone.simpleNum, 333);
    expect(clone.numList, newNumList);
    dynamic recoded = recode(sg.toMap());
    Something redecoded = Something().populateFromMap(recoded);
    matchSomething(redecoded.toMap(), sg);
  });
}
