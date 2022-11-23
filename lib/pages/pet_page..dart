import 'package:adoptme/models/package_details.dart';
import 'package:adoptme/pages/adoption_page.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:adoptme/widgets/back_button.dart';
import 'package:adoptme/widgets/vet_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PetPage extends StatefulWidget {
  const PetPage({Key? key}) : super(key: key);

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  late ScrollController _controller;
  double headerHeight = 140;
  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset > 0) {
        setState(() {
          headerHeight = 0;
        });
      } else {
        setState(() {
          headerHeight = 140;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final veterinaryPackage = [
      {
        'title': 'veterinaria (online)',
        'sub': null,
        'pet': 'assets/svg/pet_circle.svg',
        'items': [
          'Consulta única',
          'Consultoría por llamada y video',
          'Asesoramiento personalizado'
        ],
        'price': 20000
      },
      {
        'title': 'veterinaria cariños',
        'sub': null,
        'pet': null,
        'items': [
          'Consulta',
          'Medicamentos',
          'Diagnosticos',
        ],
        'price': 30000
      },
      {
        'title': 'Animals',
        'sub': null,
        'pet': null,
        'items': ['Consulta', 'Medicamentos', 'Diagnosticos', 'Emergencias'],
        'price': 49999
      },
      {
        'title': ' Pets',
        'sub': null,
        'pet': 'assets/svg/pet_circle2.svg',
        'items': [
          'Consulta Nutricional',
          'Gestión de crianza de perros',
          'Consejos de  conducta',
          '(Agresión, Morder, Saltar)'
        ],
        'price': 59999
      },
      {
        'title': 'Vetesof',
        'sub': null,
        'pet': null,
        'items': [
          'Chat Consultas',
          'Asesoramiento Personalizado',
          '1 mes de seguimiento',
          'Preventivo de garrapatas y pulgas'
        ],
        'price': 70000
      },
    ];
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const Gap(100),
                AnimatedContainer(
                    margin: EdgeInsets.only(bottom: headerHeight == 0 ? 0 : 16),
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInExpo,
                    width: double.infinity,
                    height: headerHeight,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/svg/perro_redes.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Styles.bgColor, width: 3)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AdoptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 44),
                          primary: Color.fromARGB(0, 255, 255, 255),
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))),
                AnimatedContainer(
                    margin: EdgeInsets.only(bottom: headerHeight == 0 ? 0 : 16),
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInExpo,
                    width: double.infinity,
                    height: headerHeight,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/svg/perro1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Styles.bgColor, width: 3)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AdoptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 44),
                          primary: Color.fromARGB(0, 255, 255, 255),
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))),
                AnimatedContainer(
                    margin: EdgeInsets.only(bottom: headerHeight == 0 ? 0 : 16),
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInExpo,
                    width: double.infinity,
                    height: headerHeight,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/svg/perro2.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Styles.bgColor, width: 3)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AdoptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 44),
                          primary: Color.fromARGB(0, 255, 255, 255),
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))),
                AnimatedContainer(
                    margin: EdgeInsets.only(bottom: headerHeight == 0 ? 0 : 16),
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInExpo,
                    width: double.infinity,
                    height: headerHeight,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/svg/perro3.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Styles.bgColor, width: 3)),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const AdoptionPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(150, 44),
                          primary: Color.fromARGB(0, 255, 255, 255),
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        ))),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            right: 15,
            child: Row(
              children: [
                const PetBackButton(),
                const Gap(20),
                Text('Macotas Disponibles',
                    style: TextStyle(
                        color: Styles.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))
              ],
            ),
          )
        ],
      ),
    );
  }
}
