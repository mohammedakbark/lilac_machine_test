import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/constants/img_const.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';

class StoryView extends StatelessWidget {
  StoryView({super.key});
  List<Map<String, dynamic>> list = [
    {
      "name": "Elzebet",
      "image": "https://xsgames.co/randomusers/assets/avatars/male/46.jpg",
    },
    {
      "name": "Crisatina",
      "image": "https://xsgames.co/randomusers/assets/avatars/male/63.jpg",
    },
    {
      "name": "Elzebet",
      "image": "https://xsgames.co/randomusers/assets/avatars/male/74.jpg",
    },
    {
      "name": "Crisatina",
      "image": "https://randomuser.me/api/portraits/women/12.jpg",
    },
    {
      "name": "Elzebet",
      "image": "https://randomuser.me/api/portraits/women/12.jpg",
    },
    {
      "name": "Elzebet",
      "image": "https://xsgames.co/randomusers/assets/avatars/male/46.jpg",
    },
    {
      "name": "Patricia",
      "image": "https://xsgames.co/randomusers/assets/avatars/male/63.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            list.length,
            (index) => Padding(
              padding: EdgeInsetsGeometry.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          list[index]['image'],
                          errorListener: (p0) {},
                        ),
                      ),
                    ),
                  ),
                  Text(list[index]['name'], style: AppStyle.normalStyle()),
                ],
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
