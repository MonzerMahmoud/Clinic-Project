import 'package:clinic_project/constants.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OldPatientsScreen extends StatelessWidget {
  final List<String> names = [
    'Amira',
    'Ahmed',
    'Sara',
    'Karem',
    'Alaa',
    'Anas',
    'Fatima',
    'Samar'
  ];
  final List<String> age = [
    '24',
    '35',
    '16',
    '45',
    '28',
    '29',
    '24',
    '20',
  ];
  final List<String> illness = [
    'Cold',
    'Influenza',
    'Sore Throat',
    'Pink Eye',
    'Headache',
    'Sinusitis',
    'Bronchitis',
    'Diarrhea',
  ];
  final List<String> id = [
    '22456',
    '78865',
    '44556',
    '23334',
    '24456',
    '23456',
    '78908',
    '45567',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,50,10,10),
          child: Column(
            children: [
              CustomText(text: 'Old Patients :',fontSize: 30,),
              SizedBox(height: 10,),
              CustomText(text: 'Personal Informations :',fontSize: 20,),
              SizedBox(height: 5,),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: primaryColor,
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [CustomText(text: 'Name : ${names[index]}',fontSize: 20,color: Colors.white,),
                            SizedBox(height: 10,),
                            CustomText(text: 'Age : ${age[index]}',fontSize: 20,color: Colors.white),
                            SizedBox(height: 10,),
                            CustomText(text: 'Illness : ${illness[index]}',fontSize: 20,color: Colors.white),
                            SizedBox(height: 10,),
                            CustomText(text: 'Patient ID : ${id[index]}',fontSize: 20,color: Colors.white),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
