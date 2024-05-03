import 'package:bookly/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageURl});
  final String imageURl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(
              color: Color(0xff0075FF),
            ),
          ),
          imageUrl: imageURl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Column(
            children: [
              Icon(
                Icons.error,
                size: 25,
                color: Colors.red,
              ),
              Text('There is no data')
            ],
          ),
        ),
      ),
    );
  }
}
