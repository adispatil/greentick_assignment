import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:greentick/common/text_styles.dart';
import 'package:greentick/screens/store_list/controller/store_list_controller.dart';

class StoreListScreen extends GetView<StoreListController> {
  StoreListScreen({Key? key}) : super(key: key);

  final dynamic intent = Get.arguments;

  @override
  Widget build(BuildContext context) {
    controller.setIntentData(intent);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Store List',
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Obx(() {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: controller.storeList.length,
                itemBuilder: (context, index) {
                  var item = controller.storeList[index];
                  return SizedBox(
                    width: Get.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            width: Get.width * 0.9,
                            height: Get.width * 0.55,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(25.0)),
                              child: CachedNetworkImage(
                                width: Get.width * 0.9,
                                height: Get.width * 0.75,
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
                          Container(
                            width: Get.width,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16, right: 16),
                              child: Text(
                                '${item.storeTitle}, ${item.storeLocation}',
                                style: TextStyles.kTextH4TextColorBold,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 15,),
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

                              const SizedBox(width: 15,),
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

                              const SizedBox(width: 15,),
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
                });
          }),
        ),
      ),
    );
  }
}
