import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottomBar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFEB4335),
          ),
          onPressed: () {
            // Navigate back to the previous page when the back button is pressed
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height * 0.02),

              Image.asset(
                'assets/images/otp_img.png',
                width: screenSize.width * 0.9,
              ),
              SizedBox(height: screenSize.height * 0.09),

              // OTP field with outline
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6, // Set the length of OTP
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box, // Use box to create a border
                    borderRadius: BorderRadius.circular(
                        5), // Adjust the border radius as needed
                    borderWidth: 1, // Set the width of the border
                    inactiveColor: Color(0xFFEB4335),
                    activeColor: Color(0xFFEB4335),
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                  ),
                  onChanged: (value) {},
                ),
              ),

              SizedBox(height: screenSize.height * 0.05),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '0:00',
                    style: TextStyle(color: Color(0xFFEB4335)),
                  ),
                  Text('Resent otp')
                ],
              ),
              SizedBox(height: screenSize.height * 0.1),

              SizedBox(
                height: screenSize.height * 0.06,
                width: screenSize.width * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>BottomBar()),
        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5F1F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
