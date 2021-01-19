import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Menus/components/menu_item.dart';
import 'package:flutter_app/Screens/Questionairres/alcohol/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/culinary_coaching/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/fasting/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/general/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/intervention/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/lifestyle/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/obesity/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/sleep/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/stress/introduction_screen.dart';
import 'package:flutter_app/Screens/Questionairres/weight_loss/introduction_screen.dart';
import 'menu_background.dart';

class Body extends StatelessWidget{
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: 
      GridView.count(   
        padding: const EdgeInsets.all(30),
        crossAxisCount: 2,
        children: <Widget>[
          MenuItem(image: "assets/images/lifestyle.png", size: size, text: "Evidence -based Lifestyle Medicine", tap: (){ Navigator.of(context).push(_lifestylePackagesRoute()); } ),        
          MenuItem(image: "assets/images/weight-loss.png", size: size, text: "4 - Week Weight Loss Plan", tap: (){Navigator.of(context).push(_weightLossRoute());}),        
          MenuItem(image: "assets/images/intermittent-fasting.png", size: size, text: "4 - Week Intermittent Fasting Regimen", tap: (){Navigator.of(context).push(_fastingRegimeLossRoute());}),        
          MenuItem(image: "assets/images/diabetes.png", size: size * 0.5, text: "Intervention for Diabetics, Hypertensive Patients & Others", tap: () { Navigator.of(context).push(_diabetesRoute());} ),        
          MenuItem(image: "assets/images/culinary.png", size: size, text: "Culinary Coaching Sessions", tap: () { Navigator.of(context).push(_culinaryCoachingRoute());} ),        
          MenuItem(image: "assets/images/stress.png", size: size, text: "Stress Management Clinic", tap: (){Navigator.of(context).push(_stressManagementClinicRoute());}),        
          MenuItem(image: "assets/images/sleep.png", size: size, text: "Sleep Clinic",  tap: (){Navigator.of(context).push(_sleepClinicRoute()); }),        
          MenuItem(image: "assets/images/obesity.png", size: size, text: "Obesity Clinic",tap: (){Navigator.of(context).push(_obesityClinicRoute()); }),        
          MenuItem(image: "assets/images/alcohol.png", size: size, text: "Alcohol & Smoking Cessation Clinic", tap: (){Navigator.of(context).push(_alcoholAndCigerrateCessationClinicRoute());}),        
          MenuItem(image: "assets/images/consultation.png", size: size, text: "Not Sure? Let\'s Guide You!", tap: (){Navigator.of(context).push(_guideRoute());}),        
        ],
      ),
    );
  }
}

Route _lifestylePackagesRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LifestylePackageIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _weightLossRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => WeightLossPlanScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _fastingRegimeLossRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FastingRegimeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _diabetesRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DiabetesIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _culinaryCoachingRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CulinaryCoachingScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _stressManagementClinicRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => StressPackageIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _obesityClinicRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ObesityClinicIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _sleepClinicRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SleepClinicIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _alcoholAndCigerrateCessationClinicRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AlcoholPackageIntroductionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _guideRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => GeneralScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}



