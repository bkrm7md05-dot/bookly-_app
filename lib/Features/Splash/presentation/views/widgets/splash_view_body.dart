import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/Core/utils/assets.dart';
import 'package:project/Features/Splash/presentation/views/widgets/slidingText.dart';
import 'package:project/Features/home/presentation/views/home_view.dart';
import 'package:project/constants.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateToHome();

    initSlidingAnimation();
  }

  
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

        const SizedBox(height: 15),

        slidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void navigateToHome() {
     Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fade, 
      
        duration: Duration(seconds: kTransitionDuration.inSeconds),
        );
    
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }
}
