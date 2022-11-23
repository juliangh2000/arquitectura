import 'package:adoptme/models/package.dart';
import 'package:adoptme/pages/pet_page..dart';
import 'package:adoptme/pages/vet_page.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PackageCardContrac extends StatelessWidget {
  final Package package;
  const PackageCardContrac(this.package, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     //   Navigator.push(
          //  context, MaterialPageRoute(builder: (_) => const VetPage()));
      },
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              color: Styles.bgColor, borderRadius: BorderRadius.circular(15)),
          padding:
              const EdgeInsets.only(left: 22, right: 12, top: 14, bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    package.name,
                    style: TextStyle(
                        color: Styles.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 60),
                  ),
                  Text(
                    ' ${package.services} Servicios completados!!',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        height: 1.5),
                  ),

                       Text(
                    ' ${package.bonus} Calificacion Promedio !!',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        height: 1.5),
                  ),
  Text(
                    ' Precio: ${package.price}',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),

                  const Gap(20),
                  RichText(
                    text: TextSpan(children: [
                 
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                            color: Styles.blackColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: 'Poppins'),
                      ),
                    ]),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
                  const Gap(10),
                  
              
                ],
              ),
            ],
          )),
    );
  }
}
