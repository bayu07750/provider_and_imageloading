import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider_and_imageloading/utils/images.dart';

class ImageLoadingDemo2 extends StatelessWidget {
  const ImageLoadingDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Loading Demo'),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: Images.image3,
        ),
      ),
    );
  }
}
