import 'package:chat_room/view/auth_gmail.dart';
import 'package:chat_room/view/privacy_policy.dart';
import 'package:flutter/material.dart';

import '../services/btn.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height*1;
    final width= MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: RichText(text: TextSpan(text:'Are you in agreement with the Terms of Service and ' )),
                ),
                Container(
                  child: InkWell(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyScreen(),));
                    },
                      child: RichText(text: TextSpan(text:'Privacy Policyy' ,style: TextStyle(color: Colors.green)))),
                ),

              ],
            ),
            SizedBox(height: height*.025,),
            Btn(title: 'Continue', onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
        },)
      ]),
    );
  }
}
