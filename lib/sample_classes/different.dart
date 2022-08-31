import "package:juicer/metadata.dart";
import "something.dart";

enum NatoAlphabet {
  alfa,
  bravo,
  charlie,
  delta,
  echo,
  foxtrot,
  golf,
  hotel,
  india,
  juliett,
  kilo,
  lima,
  mike,
  november,
  oscar,
  papa,
  quebec,
  romeo,
  sierra,
  tango,
  uniform,
  victor,
  whiskey,
  xray,
  yankee,
  zulu,
}

@juiced
class Different {
  Different(this.fooString);

  Different.json();

  String? fooString;
  Something? something;

  String somethingNonNullable = '';

  NatoAlphabet? letter;
  List<NatoAlphabet> string = [];
  Map<String, NatoAlphabet>? mapping;

  Map<String, /*List<int>*/ dynamic>? deep; // deep types are not supported yet

  int get readOnly => 7;

  set writeOnly(String value) => print(value);
}
