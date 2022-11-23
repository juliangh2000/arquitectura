import 'package:adoptme/models/package_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class VeterService extends ChangeNotifier {
  final String _baseUrl = 'seguridad-app-334aa-default-rtdb.firebaseio.com';

  bool cargandoVeterinarias = true;
  final List<VeterinaryDetails> veterinarias = [];
  VeterService() {
    this.loadVeterinarias();
    print(veterinarias.length);
    print("CARGO");
  }

  Future<List<VeterinaryDetails>> loadVeterinarias() async {
    cargandoVeterinarias = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'veterinarias.json');
    final respuesta = await http.get(url);
    final Map<String, dynamic> veterinariaMap = json.decode(respuesta.body);
    print(respuesta);
    veterinariaMap.forEach((key, value) {
      print(value);
      final veterinaria = VeterinaryDetails.fromJson(value);
      //veterinaria.title = "key";

      veterinarias.add(veterinaria);
    });

    cargandoVeterinarias = false;
    notifyListeners();
    return veterinarias;
  }
}
