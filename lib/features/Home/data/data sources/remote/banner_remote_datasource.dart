import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../models/banner_model.dart';

abstract class BannerRemoteDataSource {
  Future<List<BannerModel>> getBanners();
}

@LazySingleton(as: BannerRemoteDataSource)
class BannerRemoteDataSourceImpl implements BannerRemoteDataSource {
  final FirebaseFirestore firestore;

  BannerRemoteDataSourceImpl(this.firestore);

  @override
  Future<List<BannerModel>> getBanners() async {
    final snapshot = await firestore.collection('banners').get();

    final banners = snapshot.docs
        .map((doc) => BannerModel.fromJson(doc.data()))
        .toList();

    log("🔥 Banners loaded: $banners");

    return banners;
  }
}
