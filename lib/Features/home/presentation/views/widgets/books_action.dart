import 'package:flutter/material.dart';
import 'package:project/Core/utils/Widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              title: "19.99\$",
              txtColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onpressed: () {},
            ),
          ),

          Expanded(
            child: CustomButton(
              fontSize: 16,
              backGroundColor: Color(0xffEFB262),
              title: "Free Preview",
              txtColor: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              onpressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
