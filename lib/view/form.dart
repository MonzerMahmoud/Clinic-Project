import 'package:clinic_project/constants.dart';
import 'package:clinic_project/model/patients_model.dart';
import 'package:clinic_project/view/widgets/custom_button.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:clinic_project/view/widgets/custom_text_form_field.dart';
import 'package:clinic_project/view_model/patients_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class FormPage extends StatelessWidget {
  late String name, age,image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            CustomText(
              text: 'Patient Form :',
              fontSize: 30,
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                CustomText(
                  text: 'Name',
                  fontSize: 20,
                  color: Colors.grey.shade900,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white),
                  onChanged: (value) {
                    name = value;
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CustomText(
                  text: 'Age',
                  fontSize: 20,
                  color: Colors.grey.shade900,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white),
                  onChanged: (value) {
                    age = value;
                  },
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
             Column(
              children: [
                CustomText(
                  text: 'image',
                  fontSize: 20,
                  color: Colors.grey.shade900,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white),
                  onChanged: (value) {
                    image = value;
                  },
                )
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     CustomText(
            //       text: 'Ear Picture',
            //       fontSize: 20,
            //     ),
            //     CircleAvatar(
            //       child: IconButton(
            //           onPressed: () {},
            //           icon: Icon(
            //             Icons.camera_alt,
            //             color: Colors.white,
            //           )),
            //       backgroundColor: primaryColor,
            //       radius: 30,
            //     )
            //   ],
            // ),
            SizedBox(
              height: 40,
            ),
            GetBuilder<PatientsViewModel>(
                init: PatientsViewModel(),
                builder: (controller) => CustomButton(
                    onPressed: () => controller.addPatient(PatientsModel(
                          name: name,
                          age: age,
                          image: image
                          
                        )),
                    text: 'save')),
          ],
        ),
      ),
    );
  }
}
