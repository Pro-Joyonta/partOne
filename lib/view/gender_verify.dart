import 'package:chat_room/services/btn.dart';
import 'package:flutter/material.dart';

class GenderSelectionForm extends StatefulWidget {
  @override
  _GenderSelectionFormState createState() => _GenderSelectionFormState();
}

class _GenderSelectionFormState extends State<GenderSelectionForm> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.07,
                  width: width * 0.6,
                  child: Text(
                    'Select Gender:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              RadioListTile(
                title: Text('Male'),
                value: 'Male',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('Female'),
                value: 'Female',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value.toString();
                  });
                },
              ),
              SizedBox(height: 20),
              Btn(title: 'Submit',
                onTap: () {
                  // You can use the selectedGender variable for further processing
                  if (selectedGender.isNotEmpty) {
                    print('Selected Gender: $selectedGender');
                    // Add your logic here
                  } else {
                    print('Please select a gender');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
