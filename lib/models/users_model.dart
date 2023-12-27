/*
  This file serves as our Users model. It is necessary to convert our data from/to a Json file.
  First we defined a class of Users, containing all the data we want to hold.
  ! It is usually a good idea to do all operations in reference to the user id, so that field is highly suggested.
  You can change all the others as you please.

  Below is an example of a user model.
*/

class UserData {
  String uid;
  String userName;
  String email;
  String lastLogin;

  UserData({
    required this.uid,
    required this.userName,
    required this.email,
    required this.lastLogin,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      uid: json['uid'],
      userName: json['userName'],
      email: json['email'],
      lastLogin: json['lastLogin'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'userName': userName,
      'email': email,
      'lastLogin': lastLogin,
    };
  }
}
