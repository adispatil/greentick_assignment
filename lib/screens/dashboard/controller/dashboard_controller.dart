import 'dart:math';

import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxList<StoreModel> storeList = List<StoreModel>.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();

    createDummyData();
  }

  void createDummyData() {
    var imageArray = [
      'https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2019/10/06/Pictures/close-the-spa-massage-man-receiving-facial_1e244926-e811-11e9-939f-ba4a7f73df5c.jpg',
      'https://www.pymnts.com/wp-content/uploads/2018/10/macys-pop-up-shops-retail-innovation.jpg',
      'https://2hrmp9bzmmx3f0xil1wyssgx-wpengine.netdna-ssl.com/wp-content/uploads/2020/11/levis-nextgen-stores-interview-01-800x533.jpg',
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/american-clothing-and-accessories-retailer-american-eagle-news-photo-1600305047.jpg',
      'https://www.focusmall.in/wp-content/uploads/2022/01/slider02.jpg',
    ];

    storeList.add(
      StoreModel(
        storeTitle: 'Bay Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 3.0,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Mexico City',
        storeImage: imageArray[Random().nextInt(imageArray.length)],
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Fantasy Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 2.5,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Amsterdam, Netherlands',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 4.2,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 2.9,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 1.0,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 2.7,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 4.5,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Divine Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 3.5,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.add(
      StoreModel(
        storeTitle: 'Central Shopping',
        dislikeCount: formatLikeCount(Random().nextInt(9999) + 100),
        rating: 3.8,
        likeCount: formatLikeCount(Random().nextInt(9999999) + 100),
        storeLocation: 'Denver, United States',
        storeImage: (imageArray..shuffle()).first,
      ),
    );

    storeList.refresh();
  }

  String formatLikeCount(int num) {
    if (num > 999 && num < 99999) {
      return "${(num / 1000).toStringAsFixed(1)} K";
    } else if (num > 99999 && num < 999999) {
      return "${(num / 1000).toStringAsFixed(0)} K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000).toStringAsFixed(1)} M";
    } else if (num > 999999999) {
      return "${(num / 1000000000).toStringAsFixed(1)} B";
    } else {
      return num.toString();
    }
  }
}

class StoreModel {
  final String storeTitle;
  final String storeLocation;
  final String likeCount;
  final String dislikeCount;
  final double rating;
  final String storeImage;

  StoreModel({
    required this.storeTitle,
    required this.storeLocation,
    required this.likeCount,
    required this.dislikeCount,
    required this.rating,
    required this.storeImage,
  });
}
