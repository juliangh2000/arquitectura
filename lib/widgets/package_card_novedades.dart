import 'package:adoptme/models/package.dart';
import 'package:adoptme/models/package_nov.dart';
import 'package:adoptme/pages/grooming_page_contract.dart';
import 'package:adoptme/pages/pet_page..dart';
import 'package:adoptme/pages/vet_page.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PackageCardNovedades extends StatelessWidget {
  final Package package;
  const PackageCardNovedades(this.package, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const VetPage()));
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
                        fontSize: 17),
                  ),
                 
                  const Gap(20),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Desceunto de',
                          style: TextStyle(
                              color: Styles.blackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Poppins')),
                    
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
              
            ],
          )),
    );
  }
}
