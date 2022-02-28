import 'package:flutter/material.dart';

class PatientsModel {
   String? name, image, age;

  PatientsModel({this.image = '', this.name = '', this.age = ''});

  PatientsModel.fromJason(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    age = map['age'];
  }
  toJason() {
    return {
      'name' : name,
      'image' : image,
      'age': age,
    };
  }
}
