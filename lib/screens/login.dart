import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/otp.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? phoneNumber = ''; // Change the type to String for 10 digits validation

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (value.length != 10) {
      return 'Phone number must be exactly 10 digits';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.1,
              ),
              Image.asset(
                'assets/images/login_img.png',
                width: screenSize.width * 0.9,
              ),
              SizedBox(height: screenSize.height * 0.15),
              Container(
                height: screenSize.height * 0.07,
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
                child:  Form(
                key: _formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:const InputDecoration(
                    fillColor: Colors.white,
                      labelText: 'Enter Mobile No',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontWeight: FontWeight.w500,
                      ),
                       filled: true,
                      enabledBorder: OutlineInputBorder(
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
                     validator: validatePhoneNumber, // Use the custom validator here
      onSaved: (value) {
        phoneNumber = value;
      },
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.08),
              SizedBox(
                height: screenSize.height * 0.05,
                width: screenSize.width * 0.7,
                child: ElevatedButton(
                  onPressed:(){
                     if (_formKey.currentState!.validate()) {
        // Phone number is valid, you can now proceed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OtpPage()),
        );
      }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5F1F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: const Text('Login',style:TextStyle(color: Colors.white),),
                ),
              ),
              // SizedBox(
              //   height: screenSize.height * 0.04,
              // ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(
              //           left: screenSize.width * 0.2,
              //           right: screenSize.width * 0.03,
              //         ),
              //         child:const Divider(
              //           color: Color(0xFFFFFAF8F),
              //           height: 10,
              //         ),
              //       ),
              //     ),
              //   const  Text(
              //       "OR",
              //       style: TextStyle(color: Color(0xFFFEB4335)),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(
              //           left: screenSize.width * 0.03,
              //           right: screenSize.width * 0.2,
              //         ),
              //         child: Divider(
              //           color: Color(0xFFFFFAF8F),
              //           height: 10,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: screenSize.height * 0.02,
              // ),
              // TextButton(
              //   onPressed: () {},
              //   child: Text(
              //     'sign up With Google',
              //     style: TextStyle(
              //       fontSize: screenSize.height * 0.02,
              //       fontWeight: FontWeight.w500,
              //       color: Color(0xFFF000000),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: screenSize.height * 0.01,
              // ),
              // CircleAvatar(
              //   radius: screenSize.height * 0.015,
              //   backgroundImage: AssetImage('assets/images/googlelogo.png'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}