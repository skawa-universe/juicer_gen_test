import "package:juicer/metadata.dart" as juicer;
import "different.juicer.dart";
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unnecessary_cast
import 'package:juicer/juicer_util.dart';


class Juiced {
  const Juiced();
}

@juicer.juiced
@Juiced()
class Something {
  @override
  String toString() => "Something($simpleNum)";

  num? simpleNum;

  @juicer.Property(name: "getterDecoration")
  int get b => 0xb;

  set b(int val) {}

  int get c => 0xc;

  @juicer.Property(name: "setterDecoration")
  set c(int val) {}

  double? sampleDouble;

  double? integerDouble;

  @juicer.Property(ignore: true)
  int get ignored1 => 0;

  set ignored1(int val) {}

  int get ignored2 => 0;

  @juicer.Property(ignore: true)
  set ignored2(int val) {}

  Different? completelyDifferent;

  Map<String, dynamic>? rawMap;

  List<Different?>? differentList;

  Iterable<Different?>? differentIterable;

  Map<String, int?>? intMap;

  List<int?>? intList;

  List<num?>? numList;
  
  List<String> nonNullableList = [];
  bool operator ==(Object other) => juicerEquals(other);
  int get hashCode => juicerHashCode();
}
// package:juicer_gen_test/sample_classes/something.dart Something
extension package_juicer_gen_test_sample_classes_something_dart__SomethingJuicer on Something {
static Something createJuicableInstance() => Something();
Map<String, dynamic> toMap() => removeNullValues({
"simpleNum": this.simpleNum,
"sampleDouble": this.sampleDouble,
"integerDouble": this.integerDouble,
"completelyDifferent": this.completelyDifferent?.toMap(),
"rawMap": this.rawMap == null ? null : Map.fromIterable(this.rawMap!.keys, value: (k) => this.rawMap![k]),
"differentList": this.differentList?.map((e) => e?.toMap()).toList(),
"differentIterable": this.differentIterable?.map((e) => e?.toMap()).toList(),
"intMap": this.intMap == null ? null : Map.fromIterable(this.intMap!.keys, value: (k) => this.intMap![k]),
"intList": this.intList?.toList(),
"numList": this.numList?.toList(),
"nonNullableList": this.nonNullableList.toList(),
"getterDecoration": this.b,
"setterDecoration": this.c,
// ignored1 is ignored
// ignored2 is ignored
});
Something populateFromMap(Map map) {
if (map.containsKey("simpleNum")) this.simpleNum =  map["simpleNum"];
if (map.containsKey("sampleDouble")) this.sampleDouble =  map["sampleDouble"]?.toDouble();
if (map.containsKey("integerDouble")) this.integerDouble =  map["integerDouble"]?.toDouble();
if (map.containsKey("completelyDifferent")) this.completelyDifferent =  map["completelyDifferent"] == null ? null : package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer.createJuicableInstance().populateFromMap(map["completelyDifferent"]);
if (map.containsKey("rawMap")) this.rawMap =  map["rawMap"] == null ? null : Map<String,dynamic>.from(map["rawMap"]);
if (map.containsKey("differentList")) this.differentList =  map["differentList"]?.map<Different?>((val) => val == null ? null : package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer.createJuicableInstance().populateFromMap(val)).toList();
if (map.containsKey("differentIterable")) this.differentIterable =  map["differentIterable"]?.map<Different?>((val) => val == null ? null : package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer.createJuicableInstance().populateFromMap(val)).toList();
if (map.containsKey("intMap")) this.intMap =  map["intMap"] == null ? null : Map<String,int?>.from(map["intMap"]);
if (map.containsKey("intList")) this.intList =  map["intList"]?.map<int?>((val) => (val as num?)?.toInt()).toList();
if (map.containsKey("numList")) this.numList =  map["numList"]?.map<num?>((val) => val as num?).toList();
if (map.containsKey("nonNullableList")) this.nonNullableList =  map["nonNullableList"]?.map<String>((val) => val as String).toList();
if (map.containsKey("getterDecoration")) this.b =  map["getterDecoration"]?.toInt();
if (map.containsKey("setterDecoration")) this.c =  map["setterDecoration"]?.toInt();
// ignored1 is ignored
// ignored2 is ignored
return this; }
Something copyWith({
num? simpleNum, 
double? sampleDouble, 
double? integerDouble, 
Different? completelyDifferent, 
Map<String,dynamic>? rawMap, 
List<Different?>? differentList, 
Iterable<Different?>? differentIterable, 
Map<String,int?>? intMap, 
List<int?>? intList, 
List<num?>? numList, 
List<String>? nonNullableList, 
int? b, 
int? c, 
}) => 
Something()..simpleNum = simpleNum ?? (this.simpleNum)
..sampleDouble = sampleDouble ?? (this.sampleDouble)
..integerDouble = integerDouble ?? (this.integerDouble)
..completelyDifferent = completelyDifferent ?? (this.completelyDifferent?.copyWith()
)
..rawMap = rawMap ?? (this.rawMap == null ? null : Map<String,dynamic>.from(this.rawMap!)
)
..differentList = differentList ?? (this.differentList?.map<Different?>((val) => val == null ? null : package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer.createJuicableInstance().copyWith()).toList()
)
..differentIterable = differentIterable ?? (this.differentIterable?.map<Different?>((val) => val == null ? null : package_juicer_gen_test_sample_classes_different_dart__DifferentJuicer.createJuicableInstance().copyWith()).toList()
)
..intMap = intMap ?? (this.intMap == null ? null : Map<String,int?>.from(this.intMap!)
)
..intList = intList ?? (this.intList?.map<int?>((val) => (val as num?)?.toInt()).toList()
)
..numList = numList ?? (this.numList?.map<num?>((val) => val as num?).toList()
)
..nonNullableList = nonNullableList ?? (this.nonNullableList.map<String>((val) => val as String).toList()
)
..b = b ?? (this.b)
..c = c ?? (this.c)
;bool juicerEquals(Object? other) => identical(this, other) || (other is Something &&
this.simpleNum == other.simpleNum &&
this.sampleDouble == other.sampleDouble &&
this.integerDouble == other.integerDouble &&
(identical(this.completelyDifferent, other.completelyDifferent) || (this.completelyDifferent?.juicerEquals(other.completelyDifferent) ?? false)) &&
customMapEquals<String,dynamic>(this.rawMap, other.rawMap, (a, b) => a == b) &&
customIterableEquals<Different?>(this.differentList, other.differentList, (a, b) => (identical(a, b) || (a?.juicerEquals(b) ?? false))) &&
customIterableEquals<Different?>(this.differentIterable, other.differentIterable, (a, b) => (identical(a, b) || (a?.juicerEquals(b) ?? false))) &&
customMapEquals<String,int?>(this.intMap, other.intMap, (a, b) => a == b) &&
customIterableEquals<int?>(this.intList, other.intList, (a, b) => a == b) &&
customIterableEquals<num?>(this.numList, other.numList, (a, b) => a == b) &&
customIterableEquals<String>(this.nonNullableList, other.nonNullableList, (a, b) => a == b) &&
this.b == other.b &&
this.c == other.c);
int juicerHashCode() => hashIterable([simpleNum.hashCode,
sampleDouble.hashCode,
integerDouble.hashCode,
(completelyDifferent?.juicerHashCode() ?? 0),
(rawMap?.entries.fold<int>(0, (prev, e) => prev ^ e.key.hashCode ^ e.value.hashCode) ?? 0),
hashIterable(differentList?.map((e) => (e?.juicerHashCode() ?? 0))),
hashIterable(differentIterable?.map((e) => (e?.juicerHashCode() ?? 0))),
(intMap?.entries.fold<int>(0, (prev, e) => prev ^ e.key.hashCode ^ e.value.hashCode) ?? 0),
hashIterable(intList?.map((e) => e.hashCode)),
hashIterable(numList?.map((e) => e.hashCode)),
hashIterable(nonNullableList.map((e) => e.hashCode)),
b.hashCode,
c.hashCode,
]);
}
