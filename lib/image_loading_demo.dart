import 'package:flutter/material.dart';
import 'package:provider_and_imageloading/utils/images.dart';

class ImageLoadingDemo extends StatelessWidget {
  const ImageLoadingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Loading Demo'),
      ),
      body: Center(
        child: Image.network(
          Images.image1,
        ),
      ),
    );
  }
}
