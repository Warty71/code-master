/*
  This file serves as our Users model. It is necessary to convert our data from/to a Json file.
  First we defined a class of Users, containing all the data we want to hold.
  ! It is usually a good idea to do all operations in reference to the user id, so that field is highly suggested.
  You can change all the others as you please.

  Below is an example of a user model.
*/

class Users {
  String id;
  String userName;
  String email;

  Users({
    required this.id,
    required this.userName,
    required this.email,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
    };
  }
}
