import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(

        children: [


        Image.asset('assets/images/quran_style.png'),
          const Divider(
            color: Colors.redAccent,
            thickness: 2,
          ),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اسم السورة',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 11,
                ),
                Text(
                  'عدد الايات',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          )
         , const VerticalDivider(
          color: Colors.black,
          thickness: 2,
          width: 11,



          ) ],
      ),
    ));
  }
}
