import 'package:flutter/material.dart';
import 'package:project/Features/Splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: splashViewBody()
      
      );
  }
}
/*
echo "# bookly-_app" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bkrm7md05-dot/bookly-_app.git
git push -u origin main


*/











/*
  
  
  
  
import 'package:flutter/material.dart';
import 'package:project/Core/utils/assets.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    /// TODO: implement initState
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(minutes: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin:const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  ///! Any Controller must dead it by dispose()
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(clsAssets.logo),

        const SizedBox(height: 18),

        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text("Read Free Boxes", textAlign: TextAlign.center));
          },
        ),
      ],
    );
  }
}



 */