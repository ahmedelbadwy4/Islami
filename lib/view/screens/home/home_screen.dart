import 'package:flutter/material.dart';
import 'package:new_islami/view/quran/quran_screen.dart';
import 'package:new_islami/view/screens/ahadeth/ahadeth.dart';
import 'package:new_islami/view/screens/radio/radio_screen.dart';
import 'package:new_islami/view/screens/sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> tabs = [

    QuranScreen(),
    RadioScreen(),
    SebhaScreen(),
    AhadethScreen()


  ];
  int selectedIndex = 0 ;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "اسلامي",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),


      body: tabs[selectedIndex],



        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffB7935F),
          elevation: 0,
          iconSize: 35,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          showSelectedLabels: true,
          showUnselectedLabels: true ,
          type: BottomNavigationBarType.fixed ,
          currentIndex: selectedIndex ,
          onTap: (index) {

            setState(() {
            selectedIndex = index ;
            });

            print(index);
          },

          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/icons/quran.png',
                )),
                label: 'quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/icons/radio_blue (1).png',
                )),
                label: 'radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  'assets/images/sebha_style.png',
                )),
                label: 'alsabha'),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: "Ahadeth",
            ),
          ],
        )



    );
  }
}
