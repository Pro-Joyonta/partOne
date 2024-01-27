import 'package:flutter/material.dart';

class Btn extends StatefulWidget {
  final String? title;
  final VoidCallback onTap;
  final IconData? b_icon;

  const Btn({Key? key, this.title, required this.onTap, this.b_icon}) : super(key: key);

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;

    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
          color: Colors.black,
        ),
        child: TextButton.icon(
          onPressed: widget.onTap,
          icon: Icon(widget.b_icon, color: Colors.white),
          label: Text(widget.title ?? '', style: TextStyle(color: Colors.white)), // Using ?? to handle nullable title
        ),
      ),
    );
  }
}
