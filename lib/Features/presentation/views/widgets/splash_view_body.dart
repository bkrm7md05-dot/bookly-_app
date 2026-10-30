import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(clsAssets.logo),
    );
  }
}
