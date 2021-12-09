import "package:juicer/metadata.dart";
import "something.dart";

@juiced
class Different {
  Different(this.fooString);

  Different.json();

  String? fooString;
  Something? something;

  Map<String, /*List<int>*/ dynamic>? deep; // deep types are not supported yet

  Map<String, Map?>? notSoDeep;

  Map<String, Different?>? otherNamedDiffs;

  int get readOnly => 7;

  set writeOnly(String? value) => print(value);
}
