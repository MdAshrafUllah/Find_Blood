import 'package:auth/auth.dart';
import 'package:f_blood/DatabaseManager/databaseManager.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //reistration with email and password

  Future creatNewUser(String name, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user as FirebaseUser;
      await DataBaseManager()
          .createUserData(name, 'Male', 'O+', result.user!.uid);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //login with email and password

  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

  //logout
  Future signOut() async {
    try {
      return FirebaseAuth.instance.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
