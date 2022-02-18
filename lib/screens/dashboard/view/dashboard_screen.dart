import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:greentick/common/route_constants.dart';
import 'package:greentick/common/text_styles.dart';
import 'package:greentick/screens/dashboard/controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Store',
          style: TextStyles.kTextH4BlackRegular,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                color: Colors.black12,
                width: Get.width,
                height: 2.0,
              ),
              Container(
                width: Get.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
                child: Row(
                  children: [
                    const Icon(
                      Icons.thumb_up_rounded,
                      color: Color(0xFFAD5452),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'Recommended for you',
                      style: TextStyles.kTextH4TextColorBold,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(kRouteStoreListScreen, arguments: [controller.storeList]);
                      },
                      child: const Text(
                        'View all',
                        style: TextStyles.kTextH4TextColorRegular,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: Get.width * 0.6,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.storeList.length,
                    itemBuilder: (context, index) {
                      var item = controller.storeList[index];
                      return SizedBox(
                        width: Get.width * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              SizedBox(
                                width: Get.width * 0.7,
                                height: Get.width * 0.45,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25.0)),
                                  child: CachedNetworkImage(
                                    width: Get.width * 0.7,
                                    height: Get.width * 0.5,
                                    imageUrl: item.storeImage,
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Image.network(
                                            'https://cdn.questionpro.com/userimages/site_media/no-image.png'),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${item.storeTitle}, ${item.storeLocation}',
                                    style: TextStyles.kTextH4TextColorRegular,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.thumb_up_rounded,
                                        color: Color(0xFF007028),
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          item.likeCount,
                                          style: TextStyles.kTextH5TextColorRegular,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.thumb_down_rounded,
                                        color: Color(0xFFAB5753),
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          item.dislikeCount,
                                          style: TextStyles.kTextH5TextColorRegular
                                              .copyWith(
                                              color: const Color(0xFFAB5753)),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        margin: const EdgeInsets.only(left: 5.0, right: 2.0),
                                        child: RatingBarIndicator(
                                          rating: item.rating,
                                          itemBuilder: (context, index) =>
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xFF047632),
                                          ),
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          direction: Axis.horizontal,
                                        ),
                                      ),
                                      Text('${item.rating}'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                color: Colors.black12,
                width: Get.width,
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
