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
  Widget build(BuildContext context) {// Here starts the screen
    return Scaffold(
      
      body: Padding(// Body of the screen
        padding: const EdgeInsets.all(8.0),
        child: Column(// Put information's in a column
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Row(//First child of the column
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'ENT CLINIC',fontSize: 50,color: primaryColor,),// Text of the screen
              ],
            ),
            
            Column(// Second child of the column
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(// New patient button to go to the form
                    onPressed: ()=>Get.to(()=>FormPage()),
                    text: 'New Patient'),
                SizedBox(
                  height: 20,
                ),
                CustomButton(onPressed: ()=>Get.to(()=>OldPatientsScreen()), text: 'Old Patient'),//old patient button to go to the old patients screen
              ],
            ),
            SizedBox(height: 1,)
          ],
        ),
      ),
    );
  }
}
