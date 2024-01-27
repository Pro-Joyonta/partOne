import 'package:chat_room/services/btn.dart';
import 'package:chat_room/view/terms_conditons.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height*1;
    final width= MediaQuery.of(context).size.width*1;
    return  Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: RichText(text: TextSpan(text:'Are you agree with our Privacy?' )),
          ),
          SizedBox(height: height*.025,),
          Btn(title: 'Continue', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TermsPage(),)
            );
          },)
        ],
      ),
    );
  }
}
