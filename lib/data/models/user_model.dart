class UserModel {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String mobile;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.mobile
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData){
    return UserModel(
      id: jsonData['_id'],
      email: jsonData['email'],
      firstName: jsonData['firstName'],
      lastName: jsonData['lastName'],
      mobile: jsonData['mobile'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      '_id': id,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'mobile': mobile,
    };
  }
}

// "_id": "69459e7a880cc5d30a3056d8",
// "email": "tousif2robbani@gmail.com",
// "firstName": "a",
// "lastName": "b",
// "mobile": "01234567890",
// "createdDate": "2025-10-02T06:21:41.011Z",