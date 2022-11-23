import 'package:adoptme/models/package_details.dart';
import 'package:flutter/material.dart';

class VeterinariaFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  /* VeterinaryDetails veterinaria;

  VeterinariaFormProvider(this.veterinaria);*/

  updateAvailability(bool value) {
    print(value);
    notifyListeners();
  }

  bool isValidForm() {
    /*print(veterinaria.title);
    print(veterinaria.pet);
    print(veterinaria.sub);*/

    return formKey.currentState?.validate() ?? false;
  }
}
