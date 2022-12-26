
class Complate1 {
  static const createdTime = 'createdTime';
}

class  Complate{
  String title;
  String dec;

  factory Complate.fromJson(Map<String, dynamic> json) => Complate(
    title: json["title"],
    dec: json["dec"],

  );
  Map<String, dynamic> toJson(){
    return {
      "name": this.title,
      "dec": this.dec,

    };
  }
  Complate({
    required this.title,
    required this.dec
  });

}