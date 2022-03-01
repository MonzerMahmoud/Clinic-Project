import 'dart:convert';
import 'dart:io';

import 'package:clinic_project/constants.dart';
import 'package:clinic_project/model/patients_model.dart';
import 'package:clinic_project/view/patients_status_page.dart';
import 'package:clinic_project/view/widgets/custom_button.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:clinic_project/view_model/patients_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late String name, age, image;
  String lll = 'wrong';
  File? images;

  Future pickImage() async {
    try {
      final images = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (images == null) return;
      final imageTemporary = File(images.path);
      this.images = imageTemporary;
      setState(() => this.images = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

  Future upload(String? jjj) async {
    if (images == null) return;
    String? kkk = await base64Encode(images!.readAsBytesSync());
    String imageName = images!.path.split("/").last;
    return kkk;
  }

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
            const SizedBox(
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
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white),
                  onChanged: (value) {
                    name = value;
                  },
                )
              ],
            ),
            const SizedBox(
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
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white),
                  onChanged: (value) {
                    age = value;
                  },
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Ear Picture',
                  fontSize: 20,
                ),
                CircleAvatar(
                  child: images != null
                      ? Image.file(images!)
                      : IconButton(
                          onPressed: () async {
                            await pickImage();
                            upload(lll);

                            print(lll);
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          )),
                  backgroundColor: primaryColor,
                  radius: 30,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GetBuilder<PatientsViewModel>(
                init: PatientsViewModel(),
                builder: (controller) => CustomButton(
                    onPressed: () async {
                      controller.addPatient(
                          PatientsModel(name: name, age: age, image: lll));

                      Get.offAll(() => const PatientsStatusPage());
                    },
                    text: 'save')),
          ],
        ),
      ),
    );
  }
}
