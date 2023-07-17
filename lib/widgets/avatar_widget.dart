import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black, // Set the border color
          width: 8.0, // Set the width of the border (four times the original value)
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent, // Remove the white background color
        radius: 80.0, // Adjust the size of the avatar as needed
        child: Icon(
          CupertinoIcons.person_fill, // Use Cupertino icon for a single person
          size: 80.0, // Adjust the size of the icon as needed
          color: Colors.black, // Set the color for the person icon
        ),
      ),
    );
  }
}
//
// class AvatarWidget extends StatelessWidget {
//   const AvatarWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       backgroundColor: Color.fromRGBO(192, 192, 192, 0.5),
//       radius: 80.0, // Adjust the size of the avatar as needed
//       child: Icon(
//         Icons.person,
//         size: 80.0, // Adjust the size of the icon as needed
//         color: Colors.white, // Set the color for the icon
//       ),
//     );
//   }
// }
