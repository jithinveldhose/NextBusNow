import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/customProfilePicture.dart';

class UpdateBusDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    var spacer = SizedBox(
      height: screenSize.height * 0.015,
    );
    var widthSpace = SizedBox(width: screenSize.width * 0.13);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenSize.height * 0.1,
            child: Container(
              color: Colors.grey,
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Image.asset('assets/images/update details.png'),
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                  const Text('UPDATE YOUR DETAILS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.65,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: screenSize.height * 0.5,
            left: 5,
            right: 5,
            bottom: screenSize.height * 0.06,
            child: Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Column(children: [
                      SizedBox(
                        width: screenSize.width * 0.58,
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenSize.height * 0.08,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                widthSpace,
                             const   Text(
                                  'AR TRAVELS',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.01),
                            Row(
                              children: [
                                widthSpace,
                              const  Text(
                                  'Ram sankar',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                )
                              ],
                            ),
                            spacer,
                            Row(
                              children: [
                                widthSpace,
                              const  Text(
                                  'Bus Rc Doc',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                                widthSpace,
                              const  Icon(
                                  Icons.verified,
                                  color: Colors.green,
                                  size: 20,
                                )
                              ],
                            ),
                            spacer,
                            Row(
                              children: [
                                widthSpace,
                              const  Text(
                                  'Driving Licence',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                                SizedBox(width: screenSize.width * 0.05),
                              const  Icon(Icons.verified,
                                    color: Colors.green, size: 20)
                              ],
                            ),
                            spacer,
                            Row(
                              children: [
                                widthSpace,
                               const Text('Palakkad to chittur',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 17))
                              ],
                            ),
                          ],
                        ),
                      )
                    ]),
                    Column(children: [
                      SizedBox(
                        
                        width: screenSize.width * 0.38,
                        child:  Column(
                          children: [
                            Row(
                              
                              children: [
                                SizedBox(height: screenSize.height*0.06,),
                                SizedBox(width: screenSize.width*0.28,),
                              const  Icon(
                                  Icons.note_alt_outlined,
                                  color: Color(0xFFFF5F1F),
                                  size: 28,
                                )
                              ],
                            ),
                            spacer,
                            Row(
                              children: [widthSpace,Text('KL 09 J 50734',style: TextStyle( fontWeight: FontWeight.bold))],
                            ),
                            SizedBox(height: screenSize.height*0.09,),
                            Image.asset('assets/images/bus details image.png')
                          ],
                        ),
                      )
                    ])
                  ],
                )),
          ),
          Positioned(
              top: screenSize.height * 0.05,
              left: screenSize.width * 0.15,
              right: 0,
              bottom: 0,
              child: ProfilePicture(
                showCameraIcon: false,
                borderColor: Colors.white,
                radius: 28,
              )),
        ],
      ),
     
    );
  }
}


