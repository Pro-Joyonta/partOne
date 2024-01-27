import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final IconData? myicon;
  final VoidCallback ontap;

  const IconBtn({Key? key, this.myicon, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black, // Move color property to BoxDecoration
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: ontap,
        icon: Icon(myicon),
        color: Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
