
class Todo1 {
  static const createdTime = 'createdTime';
}

class  Todo{
  String title;
  String dec;

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
    title: json["title"],
    dec: json["dec"],

  );
  Map<String, dynamic> toJson(){
    return {
      "name": this.title,
      "dec": this.dec,

    };
  }
  Todo({
    required this.title,
    required this.dec
  });

}