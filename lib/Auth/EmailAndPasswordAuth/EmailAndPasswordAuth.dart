import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      print("Something went wrong");
    }
    return null;
  }

  Future<User?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      print("Something went wrong");
    }
    return null;
  }

  Future<void> signout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Something went wrong");
    }
  }

  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await _createUserDocument(userCredential.user!);
    } catch (e) {
      throw e;
    }
  }

  Future<void> _createUserDocument(User user) async {
    try {
      await _firestore.collection('users').doc(user.uid).set({
        'email': user.email,
      });
    } catch (e) {
      throw e;
    }
  }
}
