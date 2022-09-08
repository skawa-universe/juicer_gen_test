import "package:juicer/metadata.dart";
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unnecessary_cast
import 'package:juicer/juicer_util.dart';


@juiced
class Rest {
  int? a;
  String? b;
  @Property(rest: true)
  Map<String, dynamic>? rest;
  bool operator ==(Object other) => juicerEquals(other);
  int get hashCode => juicerHashCode();
}
// package:juicer_gen_test/sample_classes/rest.dart Rest
extension package_juicer_gen_test_sample_classes_rest_dart__RestJuicer on Rest {
static Rest createJuicableInstance() => Rest();
Map<String, dynamic> toMap() => removeNullValues({
"a": this.a,
"b": this.b,
// rest is ignored
});
Rest populateFromMap(Map map) {
Set keysRemaining = map.keys.toSet();
keysRemaining.remove("a");
if (map.containsKey("a")) this.a =  map["a"]?.toInt();
keysRemaining.remove("b");
if (map.containsKey("b")) this.b =  map["b"];
 this.rest = {for (String key in keysRemaining.whereType<String>()) key: map[key]};
return this; }
Rest copyWith({
int? a, 
String? b, 
Map<String,dynamic>? rest, 
}) => 
Rest()..a = a ?? (this.a)
..b = b ?? (this.b)
..rest = rest ?? (this.rest == null ? null : Map<String,dynamic>.from(this.rest!)
)
;bool juicerEquals(Object? other) => identical(this, other) || (other is Rest &&
this.a == other.a &&
this.b == other.b &&
customMapEquals<String,dynamic>(this.rest, other.rest, (a, b) => a == b));
int juicerHashCode() => hashIterable([a.hashCode,
b.hashCode,
(rest?.entries.fold<int>(0, (prev, e) => prev ^ e.key.hashCode ^ e.value.hashCode) ?? 0),
]);
}
