import 'package:flutter/material.dart';

class PhotoScaffold extends StatelessWidget {
  final Widget? body;

  final String imagePath;

  const PhotoScaffold({
    Key? key,
    this.body,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: body,
          ),
        ),
      ],
    );
  }
}
