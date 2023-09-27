import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final bool showCameraIcon;
  final Color borderColor;
  final double radius;
  ProfilePicture({required this.showCameraIcon,required this.borderColor,required this.radius});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor,
              width:2.0, // Customize the border width
            ),
          ),
          margin:const EdgeInsets.only(top:30, right: 50.0),
          child:  CircleAvatar(
            radius:radius,
            backgroundImage: AssetImage('assets/images/profile pic.png'),
          ),
        ),
        if (showCameraIcon)
         const Positioned(
            top:85.0,
            right:50.0,
            child: Icon(
              Icons.photo_camera_outlined,
              color:  Color(0xFFFF5F1F),size:34, // Customize the camera icon color
            ),
          ),
      ],
    );
  }
}