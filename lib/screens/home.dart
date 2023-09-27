import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int index =0;
  // final screens = [
  //   HomeScreen(),
  //   BusDetails(),
  //   ChatScreen()
  // ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenSize.width * 1,
              height: screenSize.height * 0.35,
              child: Image.asset(
                'assets/images/home screen.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
                width: screenSize.width * 1,
                height: screenSize.height * 0.7,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.fill,
                ))
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBarTheme(
      //   data: const NavigationBarThemeData(
      //     indicatorColor: Color.fromARGB(115, 246, 208, 208),
      //       labelTextStyle: MaterialStatePropertyAll(TextStyle(
      //           color: Colors.white,
      //           fontSize: 14,
      //           fontWeight: FontWeight.w500),),),
      //   child: NavigationBar(
      //     height: screenSize.height * 0.08,
      //     backgroundColor: const Color(0xFFFF5F1F),
      //     selectedIndex:index,
      //     onDestinationSelected: (index) => setState(() => this.index = index) ,
      //     destinations: const [
      //       NavigationDestination(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //           size: 30,
      //         ),
      //         label: "Home",
      //       ),
      //       NavigationDestination(
      //           icon: Icon(
      //             Icons.directions_bus_filled_sharp,
      //             color: Colors.white,
      //             size: 30,
      //           ),
      //           label: "Bus details"),
      //       NavigationDestination(
      //           icon: Icon(
      //             Icons.headphones_outlined,
      //             color: Colors.white,
      //             size: 30,
      //           ),
      //           label: "Help Centre"),
      //     ],
      //   ),
      // ),
      //   bottomNavigationBar: Container(
      //   color: Color(0xFFFF5F1F), // Set the background color for the entire container
      //   height: 56.0, // Adjust the height as needed
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //         icon: Icon(Icons.home, color: Colors.white, size: 33),
      //         onPressed: () {
      //           // Navigator.push(
      //           //   context,
      //           //   MaterialPageRoute(builder: (context) => HomeScreen()),
      //           // );
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.bus_alert_outlined, color: Colors.white, size: 33),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const BusDetails()),
      //           );
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.chat_bubble_outline, color: Colors.white, size: 33),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => ChatScreen()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // )
      // BottomNavigationBar(
      //   backgroundColor:  Color(0xFFFF5F1F), // Set background color to orange
      //   unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.white,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bus_alert_outlined),
      //       label: 'Bus',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_2),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
