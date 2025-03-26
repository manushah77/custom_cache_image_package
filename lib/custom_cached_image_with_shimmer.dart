import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// A custom widget for displaying cached network images with a shimmer effect as a placeholder.
class CustomCachedImage extends StatelessWidget {
  /// The height of the image.
  final double height;

  /// The width of the image.
  final double width;

  /// The URL of the image to be loaded.
  final String imageUrl;

  /// The border radius of the image.
  final double borderRadius;

  /// The BoxFit option for how the image should be fitted within its bounds.
  final BoxFit? fit;

  /// Creates a [CustomCachedImage] widget.
  const CustomCachedImage({
    super.key,
    required this.height,
    required this.width,
    required this.imageUrl,
    required this.borderRadius,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.fitWidth,
        placeholder:
            (context, url) => CachedImageWithShimmer(
              height: height,
              width: width,
              borderRadius: borderRadius,
            ),
        errorWidget:
            (context, url, error) => Image.network(
              'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg',
            ),
      ),
    );
  }
}

/// A widget that displays a shimmer effect while an image is loading.
class CachedImageWithShimmer extends StatelessWidget {
  /// The height of the shimmer effect container.
  final double height;

  /// The width of the shimmer effect container.
  final double width;

  /// The border radius of the shimmer effect container.
  final double borderRadius;

  /// Creates a [CachedImageWithShimmer] widget.
  const CachedImageWithShimmer({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(color: Colors.white, width: width, height: height),
      ),
    );
  }
}
