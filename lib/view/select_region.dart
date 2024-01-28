import 'package:chat_room/services/btn.dart';
import 'package:chat_room/services/toast.dart';
import 'package:chat_room/view/homepage.dart';
import 'package:flutter/material.dart';

class SelectRegion extends StatefulWidget {
  @override
  _SelectRegionState createState() => _SelectRegionState();
}

class _SelectRegionState extends State<SelectRegion> {
  String selectedRegion = 'North'; // Initialize with a default value
  List<String> regions = ['North', 'South', 'East', 'West', 'Central'];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

      return Scaffold(
        appBar: AppBar(elevation: 0),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
                    'Select Region:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              DropdownButton<String>(
                alignment: Alignment.center,
                borderRadius: BorderRadius.circular(20),

                value: selectedRegion,
                hint: Text('Choose a region'),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRegion = newValue!;
                  });
                },
                items: regions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    alignment: Alignment.center,
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: height * 0.03),
            Btn(
              title: 'Continue',
              onTap: () {
        if (selectedRegion.isNotEmpty) {
        print('Selected Region: $selectedRegion');
        Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage(),));
        Utils.toastMessage('Welcome to Xchat');

          // Add your logic here
        } else {
Utils.toastMessage('Please select a region');
        }
        },)
            ],
          ),
        ),
      );

  }
}

