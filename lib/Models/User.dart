class UserModel{
  String?name;
  String?age;
  String?phonenumber;
  UserModel({this.name,this.age,this.phonenumber});
  factory UserModel.fromJson(Map<String,dynamic> json){
       return UserModel(name:json ["username"],age:json["age"],phonenumber:json ["phonenumber"]);
  }
}