import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/busDetails.dart';
import 'package:flutter_application_1/screens/chatScreen.dart';
import 'package:flutter_application_1/screens/home.dart';

class BottomBar extends StatefulWidget {
   BottomBar({super.key});
 
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int indexNum =0;
  final screens = [
    HomeScreen(),
    BusDetails(),
     ChatScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.red,
      body: screens [indexNum],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Color.fromARGB(115, 246, 208, 208),
            labelTextStyle: MaterialStatePropertyAll(TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500),),),
        child: NavigationBar(
          height: screenSize.height * 0.08,
          backgroundColor: const Color(0xFFFF5F1F),
          selectedIndex:indexNum,
          onDestinationSelected: (index) => setState(() => this.indexNum = index) ,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: "Home",
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.directions_bus_filled_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                label: "Bus details"),
            NavigationDestination(
                icon: Icon(
                  Icons.headphones_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: "Help Centre"),
          ],
        ),
      ),
      );
  }
}