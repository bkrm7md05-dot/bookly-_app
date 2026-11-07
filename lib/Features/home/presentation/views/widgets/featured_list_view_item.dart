import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  final String imageUrl;
  const FeaturedListViewItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
          aspectRatio: 2.2 / 3.6,
          
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl: imageUrl ,
              errorWidget: (context, url, error) => const  Icon(Icons.error),
          )
      )
                      );
  }
}
