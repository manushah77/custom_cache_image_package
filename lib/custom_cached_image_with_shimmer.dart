import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final double borderRadius;
  final BoxFit? fit;

  const CustomCachedImage({Key? key, this.height, this.width, required this.imageUrl, required this.borderRadius, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.fitWidth,
        placeholder: (context, url) => CachedImageWithShimmer(height: height!, width: width!, borderRadius: borderRadius!),
        errorWidget:
            (context, url, error) =>
                Image.network('https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg'),
      ),
    );
  }
}

class CachedImageWithShimmer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;

  const CachedImageWithShimmer({Key? key, required this.height, required this.width, required this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Shimmer.fromColors(baseColor: Colors.grey[300]!, highlightColor: Colors.grey[100]!, child: Container(color: Colors.white, width: width, height: height)),
    );
  }
}
