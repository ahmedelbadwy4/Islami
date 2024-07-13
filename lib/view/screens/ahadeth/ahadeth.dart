import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/ahadeth_style.png"),
            const Divider(color: Colors.brown
             , thickness:5,)
         ,   Text('الاحاديث',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)

            , const Divider(color: Colors.brown
             , thickness:5,)

          ],
        ),
      ),
    );
  }
}
