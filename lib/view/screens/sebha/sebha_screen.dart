import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg3 (4).png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/sebha_style.png",
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "عدد التسبيحات",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = (counter + 1) % 34;
                      });
                    },
                    child: Text("$counter"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffB7935F),
                      fixedSize: Size(60, 70),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                decoration: BoxDecoration(
                  color: Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  "سبحان الله",
                  style: TextStyle(fontSize: 19, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ) ,
            ],
          ),
        ),
      ),

    );
  }
}
