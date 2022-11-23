import 'package:adoptme/models/package.dart';
import 'package:adoptme/models/package_details.dart';
import 'package:adoptme/pages/pet_page..dart';
import 'package:adoptme/pages/vet_page.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PackageCardContracVet extends StatelessWidget {
  final VeterinaryDetails package;
  const PackageCardContracVet(this.package, {Key? key}) : super(key: key);

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
                  Row(
                    children: [
                      const Gap(5),
                      Text(
                        package.title,
                        style: TextStyle(
                            color: Styles.blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      const Gap(7),
                      package.pet == null
                          ? const Gap(0)
                          : SvgPicture.asset(package.pet!, height: 30),
                    ],
                  ),
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: package.items.map<Widget>((i) {
                      if (package.items.indexOf(i) == 0) {
                        return RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '• $i ',
                              style: TextStyle(
                                  color: Styles.blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'Poppins')),
                          TextSpan(
                              text: package.sub,
                              style: TextStyle(
                                  color: Styles.highlightColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'Poppins')),
                        ]));
                      }
                      return Text('• $i',
                          style: TextStyle(
                              color: Styles.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'Poppins'));
                    }).toList(),
                  ),
                  const Gap(8),
                ],
              ),
             
            ],
          )),
    );
  }
}
