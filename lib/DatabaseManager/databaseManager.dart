import 'package:cloud_firestore/cloud_firestore.dart';


class DataBaseManager {
  final CollectionReference profileList = FirebaseFirestore.instance.collection('User');

  Future<void> createUserData(String name, String gender, String bloodGroup,String uid)async{
    return await profileList.doc(uid).set(
        {'name': name,
          'Gender': gender,
          'bloodGroup': bloodGroup
    });
  }
}

