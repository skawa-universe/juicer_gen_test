import "dart:convert";

import "package:test/test.dart";

import "package:juicer_gen_test/sample_classes.dart";
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
}
