import 'package:flutter/material.dart';
import 'package:new_islami/view/screens/sebha/sebha_screen.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

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
                height: 100,
              ),
              Image.asset(
                "assets/images/radioscreen.png",
                height: 250,
                width: 500,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "إذاعة القرآن الكريم",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.skip_previous,
                    color: Color(0xffB7935F),
                    size: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SebhaScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      color: Color(0xffB7935F),
                      size: 50,
                    ),
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Color(0xffB7935F),
                    size: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
