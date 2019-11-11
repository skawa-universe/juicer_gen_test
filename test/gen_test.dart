import "dart:convert";

import "package:test/test.dart";

import "package:juicer_gen_test/sample_classes.dart";
import "package:juicer_gen_test/sample_classes.juicer.dart";

import "sample_gen.dart";

void main() {
  test("Test encoding and decoding using the generated classes", () {
    Something sg = createSampleSomething();
    dynamic val = juicer.encode(sg);
    print(json.encode(val));
    matchSomething(val, sg);
    dynamic recoded = recode(juicer.encode(sg));
    Something redecoded = juicer.decode(recoded, (_) => new Something());
    matchSomething(juicer.encode(redecoded), sg);
  });
}
