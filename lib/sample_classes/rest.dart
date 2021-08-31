import "package:juicer/metadata.dart";

@juiced
class Rest {
  int a;
  String b;
  @Property(rest: true)
  Map<String, dynamic> rest;
}
