class User {
  String? name;
  String? number;

  User({required this.name,required this.number,});
  User.from({ this.name, this.number,});

  User.fromJon(Map<dynamic, dynamic> json){
    number = json['number'];
    name = json['email'];
  }

  Map<String, dynamic> toJson() => {
    'number': number,
    'name': name,
  };

}
