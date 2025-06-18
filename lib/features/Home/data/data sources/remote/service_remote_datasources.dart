import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../models/service_model.dart';

abstract class ServiceRemoteDataSource {
  Future<List<ServiceModel>> getServices();
}

@LazySingleton(as: ServiceRemoteDataSource)
class ServiceRemoteDataSourceImpl implements ServiceRemoteDataSource {
  final FirebaseFirestore firestore;

  ServiceRemoteDataSourceImpl(this.firestore);

  @override
  Future<List<ServiceModel>> getServices() async {
    final snapshot = await firestore.collection('services').get();

    return snapshot.docs
        .map((doc) => ServiceModel.fromJson(doc.data()))
        .toList();
  }
}
