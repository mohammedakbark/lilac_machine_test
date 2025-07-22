import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/constants/img_const.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';

class StoryView extends StatelessWidget {
  StoryView({super.key});
  List<String> list = [
    "Crisatina",
    "Patricia",
    "Celestine",
    "Elzebet",
    "Crisatina",
    "Patricia",
    "Celestine",
    "Elzebet",
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
                      image: DecorationImage(image: AssetImage(ImgConst.logo)),
                    ),
                  ),
                  Text(list[index], style: AppStyle.normalStyle()),
                ],
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
