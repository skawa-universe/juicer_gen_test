import "package:juicer/metadata.dart";
import "something.juicer.dart";
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unnecessary_cast
import 'package:juicer/juicer_util.dart';


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
  bool operator ==(Object other) => juicerEquals(other);
  int get hashCode => juicerHashCode();
}
// package:juicer_gen_test/sample_classes/different.dart Different
extension package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer on Different {
static Different createJuicableInstance() => Different.json();
  static const package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer = {
    "alfa": NatoAlphabet.alfa,
    "bravo": NatoAlphabet.bravo,
    "charlie": NatoAlphabet.charlie,
    "delta": NatoAlphabet.delta,
    "echo": NatoAlphabet.echo,
    "foxtrot": NatoAlphabet.foxtrot,
    "golf": NatoAlphabet.golf,
    "hotel": NatoAlphabet.hotel,
    "india": NatoAlphabet.india,
    "juliett": NatoAlphabet.juliett,
    "kilo": NatoAlphabet.kilo,
    "lima": NatoAlphabet.lima,
    "mike": NatoAlphabet.mike,
    "november": NatoAlphabet.november,
    "oscar": NatoAlphabet.oscar,
    "papa": NatoAlphabet.papa,
    "quebec": NatoAlphabet.quebec,
    "romeo": NatoAlphabet.romeo,
    "sierra": NatoAlphabet.sierra,
    "tango": NatoAlphabet.tango,
    "uniform": NatoAlphabet.uniform,
    "victor": NatoAlphabet.victor,
    "whiskey": NatoAlphabet.whiskey,
    "xray": NatoAlphabet.xray,
    "yankee": NatoAlphabet.yankee,
    "zulu": NatoAlphabet.zulu,
  };
  static const package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicerReverse = {
    NatoAlphabet.alfa: "alfa",
    NatoAlphabet.bravo: "bravo",
    NatoAlphabet.charlie: "charlie",
    NatoAlphabet.delta: "delta",
    NatoAlphabet.echo: "echo",
    NatoAlphabet.foxtrot: "foxtrot",
    NatoAlphabet.golf: "golf",
    NatoAlphabet.hotel: "hotel",
    NatoAlphabet.india: "india",
    NatoAlphabet.juliett: "juliett",
    NatoAlphabet.kilo: "kilo",
    NatoAlphabet.lima: "lima",
    NatoAlphabet.mike: "mike",
    NatoAlphabet.november: "november",
    NatoAlphabet.oscar: "oscar",
    NatoAlphabet.papa: "papa",
    NatoAlphabet.quebec: "quebec",
    NatoAlphabet.romeo: "romeo",
    NatoAlphabet.sierra: "sierra",
    NatoAlphabet.tango: "tango",
    NatoAlphabet.uniform: "uniform",
    NatoAlphabet.victor: "victor",
    NatoAlphabet.whiskey: "whiskey",
    NatoAlphabet.xray: "xray",
    NatoAlphabet.yankee: "yankee",
    NatoAlphabet.zulu: "zulu",
  };
Map<String, dynamic> toMap() => removeNullValues({
"fooString": this.fooString,
"something": this.something?.toMap(),
"somethingNonNullable": this.somethingNonNullable,
"letter": package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicerReverse[this.letter],
"string": this.string.map((e) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicerReverse[e]).toList(),
"mapping": this.mapping == null ? null : Map.fromIterable(this.mapping!.keys, value: (k) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicerReverse[this.mapping![k]]),
"deep": this.deep == null ? null : Map.fromIterable(this.deep!.keys, value: (k) => this.deep![k]),
"readOnly": this.readOnly,
// writeOnly is ignored
});
Different populateFromMap(Map map) {
if (map.containsKey("fooString")) this.fooString =  map["fooString"];
if (map.containsKey("something")) this.something =  map["something"] == null ? null : package_juicer_gen_test_sample_classes_something_dart__SomethingJuicer.createJuicableInstance().populateFromMap(map["something"]);
if (map.containsKey("somethingNonNullable")) this.somethingNonNullable =  map["somethingNonNullable"];
if (map.containsKey("letter")) this.letter = package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer[map["letter"]];
if (map.containsKey("string")) this.string =  map["string"]?.map<NatoAlphabet>((val) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer[val]!).toList();
if (map.containsKey("mapping")) this.mapping =  mapJsonMapValues(map["mapping"], (val) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer[val]!);
if (map.containsKey("deep")) this.deep =  map["deep"] == null ? null : Map<String,dynamic>.from(map["deep"]);
// readOnly is ignored
if (map.containsKey("writeOnly")) this.writeOnly =  map["writeOnly"];
return this; }
Different copyWith({
String? fooString, 
Something? something, 
String? somethingNonNullable, 
NatoAlphabet? letter, 
List<NatoAlphabet>? string, 
Map<String,NatoAlphabet>? mapping, 
Map<String,dynamic>? deep, 
}) => 
Different.json()..fooString = fooString ?? (this.fooString)
..something = something ?? (this.something?.copyWith()
)
..somethingNonNullable = somethingNonNullable ?? (this.somethingNonNullable)
..letter = letter ?? (this.letter)
..string = string ?? (this.string.map<NatoAlphabet>((val) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer[val]!).toList()
)
..mapping = mapping ?? (mapJsonMapValues<NatoAlphabet>(this.mapping, (val) => package_juicer_gen_test_sample_classes_different_dart__NatoAlphabetJuicer[val]!)
)
..deep = deep ?? (this.deep == null ? null : Map<String,dynamic>.from(this.deep!)
)
;bool juicerEquals(Object? other) => identical(this, other) || (other is Different &&
this.fooString == other.fooString &&
(identical(this.something, other.something) || (this.something?.juicerEquals(other.something) ?? false)) &&
this.somethingNonNullable == other.somethingNonNullable &&
true &&
customIterableEquals<NatoAlphabet>(this.string, other.string, (a, b) => true) &&
customMapEquals<String,NatoAlphabet>(this.mapping, other.mapping, (a, b) => true) &&
customMapEquals<String,dynamic>(this.deep, other.deep, (a, b) => a == b) &&
this.readOnly == other.readOnly);
int juicerHashCode() => hashIterable([fooString.hashCode,
(something?.juicerHashCode() ?? 0),
somethingNonNullable.hashCode,
0,
hashIterable(string.map((e) => 0)),
(mapping?.entries.fold<int>(0, (prev, e) => prev ^ e.key.hashCode ^ e.value.hashCode) ?? 0),
(deep?.entries.fold<int>(0, (prev, e) => prev ^ e.key.hashCode ^ e.value.hashCode) ?? 0),
readOnly.hashCode,
]);
}
