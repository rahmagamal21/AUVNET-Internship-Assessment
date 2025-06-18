import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getCurrentUser();
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  UserRemoteDataSourceImpl(this.auth, this.firestore);

  @override
  Future<UserModel> getCurrentUser() async {
    final user = auth.currentUser;
    if (user == null) throw Exception("User not logged in");

    final doc = await firestore.collection("users").doc(user.uid).get();

    if (!doc.exists) throw Exception("User not found in Firestore");

    final data = doc.data()!;
    return UserModel.fromJson(data);
  }
}
