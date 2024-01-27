import 'package:chat_room/services/btn.dart';
import 'package:chat_room/services/icon_btn.dart';
import 'package:chat_room/view/age_verify.dart';
import 'package:chat_room/view/select_region.dart';
import 'package:chat_room/view/splash.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height*1;
    final width= MediaQuery.of(context).size.width*1;
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hi, Welcome!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Text('Simply login just by using your google account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
        ],
      )
    ),
    SizedBox(height: height*.025,),

    Container(
      height: height*.4,
      width: width*.4,
      child:Image(image: AssetImage('images/hello.png'))

      ,),
    SizedBox(height: height*.025,),
    Btn(
      b_icon: Icons.email_outlined,
      title: 'Login with Google',
      onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) =>AgeVerify(),));
    },),
    SizedBox(height: height*.025,),
    Card(
      elevation: 5,
      child: InkWell(
        onTap: () {

        },
        child: Container(
          alignment: Alignment.center,
          width: width*.2,
          height: height*.05,
          child: Text('Need any help?', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
        ),
      ),
    )
  ],
),
    );
  }
}
