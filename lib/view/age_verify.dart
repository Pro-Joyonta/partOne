import 'package:chat_room/services/btn.dart';
import 'package:chat_room/view/gender_verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AgeVerify extends StatefulWidget {
  const AgeVerify({Key? key});

  @override
  State<AgeVerify> createState() => _AgeVerifyState();
}

class _AgeVerifyState extends State<AgeVerify> {
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height * 0.3,
              width: width * 0.3,
              child: Image(image: AssetImage('images/age-limit.png')),
            ),
            SizedBox(height: height * 0.03),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
    controller: ageController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.info),
                      hintText: 'Enter Age',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.025),
            Btn(
              title: 'Submit',
              onTap: () {
                if (ageController.text.isNotEmpty) {
                  int age = int.tryParse(ageController.text) ?? 0;

                  if (age >= 18) {
                    // Redirect to another page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenderSelectionForm()), // Replace with your actual target page
                    );
                  } else {
                    // Show toast to fill age
                    Fluttertoast.showToast(
                      msg: "You must be at least 18 years old.",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                    );
                  }
                } else {
                  // Show toast to fill age
                  Fluttertoast.showToast(
                    msg: "Please enter your age.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                  );
                }
              },
            )

          ],
        ),
      ),
    );
  }
}
