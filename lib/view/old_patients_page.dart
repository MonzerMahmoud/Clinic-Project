import 'dart:convert';
import 'dart:typed_data';

import 'package:clinic_project/constants.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:clinic_project/view_model/patients_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OldPatientsScreen extends StatelessWidget {

  Image imageFromBase64String(String base64String) {
  return Image.memory(base64Decode(base64String));
}
  @override
  Widget build(BuildContext context) {// Here starts the screen
    return
    
     Scaffold(
      body: GetBuilder<PatientsViewModel>(
        init: PatientsViewModel(),
        builder:(controller)=> Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,50,10,25),
            child: Column(
              children: [
                CustomText(text: 'Old Patients :',fontSize: 30,),
                SizedBox(height: 10,),
                CustomText(text: 'Personal Informations :',fontSize: 20,),
                SizedBox(height: 5,),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.patientsModel.length,
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
                              children: [
                              CustomText(text:controller.patientsModel[index].name,fontSize: 20,color: Colors.white,),
                              SizedBox(height: 10,),
                              CustomText(text: controller.patientsModel[index].age,fontSize: 20,color: Colors.white),
                              SizedBox(height: 10,),
                              
                              CustomText(text: controller.patientsModel[index].image,fontSize: 20,color: Colors.white),
                              SizedBox(height: 10,),
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
      ),
    );
  }
}
