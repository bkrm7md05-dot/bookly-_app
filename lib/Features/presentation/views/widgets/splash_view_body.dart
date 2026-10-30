import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
       mainAxisAlignment:  MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children:
      [
         Image.asset(clsAssets.logo),
            
            const SizedBox(height: 18,),

             const Text("Read Free Boxes", textAlign: TextAlign.center,),


        


      ],
    );

    }
}
