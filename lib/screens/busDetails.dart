import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/customProfilePicture.dart';
import 'package:flutter_application_1/widgets/customTextfield.dart';

class BusDetails extends StatelessWidget {
  const BusDetails({super.key});

  @override
  Widget build(BuildContext context) {
        final Size screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 60,left:60)),
                ProfilePicture(
                    showCameraIcon: true,
                    borderColor:Colors.orange,
                    radius: 40,), 
                    // Show camera icon
                const Padding(padding: EdgeInsets.only(top:50)),
                Container(
              height: screenSize.height * 0.05,
              // width: screenSize.width * 0.9,
              // width: width, // Use the width parameter
              margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.08),
              child: Form(
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration:const InputDecoration(
               hintText: 'Enter Manager Name',
              labelText:'Manager Name',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 149, 138, 138),
                fontWeight: FontWeight.w500,
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFEB4335),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFEB4335),
                ),
              ),
             
            ),
          ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'Bus Name',
                  hintText: 'Enter bus number',
                ),
                const Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'Bus Number',
                  hintText: 'Enter bus number',
                ),
                const Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'Bus Rc Document',
                  hintText: 'upload Rc number',
                 suffixIcon:Icons.file_upload_outlined,
                    onSuffixIconPressed: (){},
                ),
                 Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'Driver license',
                  hintText: 'Upload license',
                  suffixIcon:Icons.file_upload_outlined,
                    onSuffixIconPressed: (){},
                ),
                
                 const Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'From',
                  hintText: 'from',
                ),
                 const Padding(padding: EdgeInsets.only(top:10)),
                CustomTextField(
                  labelText: 'To ',
                  hintText: 'To',
                ),
                // Add more instances of CustomTextField as needed
                const Padding(padding: EdgeInsets.only(top:20)),
                SizedBox(
                  height: screenSize.height * 0.06,
                  width: screenSize.width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF5F1F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                
              ],)
            ),
          ),
        
      //   bottomNavigationBar: BottomNavigationBar(
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
      ),);
    
  }
}
