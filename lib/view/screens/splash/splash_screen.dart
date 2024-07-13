import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff),
      body: Center(
        child: Image.asset(
          "assets/images/app_logo.png",
          
        ),
      ),
      bottomSheet: Container(width:double.infinity,height: 200 ,
        child: Column(children: [
          Image.asset("assets/images/bottom.png")
         , Text("SUPER father mohmmed nabil",style:TextStyle (color:Color(0xffB7935F)),),
        ],
        mainAxisAlignment: MainAxisAlignment.end,

        ),
      ),
    );
  }
}
