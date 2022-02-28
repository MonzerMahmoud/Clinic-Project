import 'package:clinic_project/model/patients_model.dart';
import 'package:clinic_project/service/database/patient_data_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PatientsViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);
  List<PatientsModel> _patientModel = [];
  List<PatientsModel> get patientsModel => _patientModel;
  PatientsViewModel() {
    getAllPatients();
  }
  getAllPatients() async {
    _loading.value = true;
    var dbHelper = PatientDataBaseHelper.db;
    _patientModel = await dbHelper.getAllPatients();
    
    _loading.value = false;
    update();
  }

  addPatient(PatientsModel patientsModel) async {
    var dbHelper = PatientDataBaseHelper.db;
    await dbHelper.insert(patientsModel);
    update();
  }
}
