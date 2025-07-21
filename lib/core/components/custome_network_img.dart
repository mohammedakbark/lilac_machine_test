import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/components/app_laoding.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';

class CustomeNetworkImg extends StatelessWidget {
  final String imageURL;
  const CustomeNetworkImg({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: imageURL,
      errorListener: (value) {},
      errorWidget: (context, url, error) =>
          Icon(Icons.error, color: AppColors.GREYSHADE),
      placeholder: (context, url) => AppLoading(),
    );
  }
}
