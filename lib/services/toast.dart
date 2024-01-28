import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static void fieldFocus(BuildContext context, FocusNode currentNode, FocusNode nextNode){
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static toastMessage (String messaeg){
    Fluttertoast.showToast(msg: messaeg,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 16

    );
  }
}