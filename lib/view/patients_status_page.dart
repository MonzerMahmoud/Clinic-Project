import 'package:clinic_project/constants.dart';
import 'package:clinic_project/view/widgets/custom_button.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form.dart';
import 'old_patients_page.dart';

class PatientsStatusPage extends StatelessWidget {
  const PatientsStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'ENT CLINIC',fontSize: 50,color: primaryColor,),
              ],
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                    onPressed: ()=>Get.to(()=>FormPage()),
                    text: 'New Patient'),
                SizedBox(
                  height: 20,
                ),
                CustomButton(onPressed: ()=>Get.to(()=>OldPatientsScreen()), text: 'Old Patient'),
              ],
            ),
            SizedBox(height: 1,)
          ],
        ),
      ),
    );
  }
}
