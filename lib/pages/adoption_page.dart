import 'package:adoptme/models/package.dart';
import 'package:adoptme/pages/grooming_page.dart';
import 'package:adoptme/pages/pet_page..dart';
import 'package:adoptme/utils/layouts.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:adoptme/widgets/back_button.dart';
import 'package:adoptme/widgets/package_card.dart';
import 'package:adoptme/widgets/package_card_contrac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({Key? key}) : super(key: key);

  @override
  State<AdoptionPage> createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  List groomingList = [
    {
      'name': 'Paseo',
      'services': 12,
      'bonus': 5 ,
      'price': 30000,
    }
  ];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final List _packages = [];

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      for (var i = 0; i < groomingList.length; i++) {
        setState(() {
          listKey.currentState!
              .insertItem(0, duration: Duration(milliseconds: 500 - i * 200));
          _packages.add(groomingList[i]);
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);

    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 500),
                    builder: (context, value, _) {
                      return Stack(
                        children: [
                          Container(
                            width: value * size.width,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Styles.bgColor,
                                borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(value * size.width / 2),
                                  bottomRight:
                                      Radius.circular(value * size.width / 2),
                                )),
                            child: Column(
                              children: [
                                Gap(value * 50),
                                AnimatedSize(
                                  curve: Curves.bounceInOut,
                                  duration: const Duration(seconds: 1),
                                  child: SvgPicture.asset(
                                    
                                    'assets/svg/cat1.svg',
                                    height: value * 150,
                                  ),
                                ),
                                Gap(value * 20),
                                Text(
                                  'Adoptar Mascota?:',
                                  style: TextStyle(
                                      fontSize: value * 15, height: 2),
                                ),
                                const Spacer()
                              ],
                            ),
                          ),
                              const Positioned(
                              left: 15, top: 50, child: PetBackButton()),
                          Positioned(
                              left: size.width * 0.3,
                              right: size.width * 0.3,
                              bottom: 100,
                              child: AnimatedScale(
                                scale: value,
                                curve: Curves.bounceInOut,
                                duration: const Duration(milliseconds: 400),
                                child: ElevatedButton(
                                    onPressed: () {
                                       Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => const PetPage()));

                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      fixedSize: Size(value * 150, value * 44),
                                      primary: Color.fromARGB(255, 0, 252, 13),
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                    ),
                                    child:
                                     Row(
                                      
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                       
                                        const Spacer(),
                                        Text('Darle una oportunidad',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(255, 0, 0, 0),
                                                fontSize: value * 16)),
                                                
                                        const Spacer(),
                                    
                                      ],
                                    )),
                              )),
                                 Positioned(
                              left: size.width * 0.3,
                              right: size.width * 0.3,
                              bottom: 40,
                              child: AnimatedScale(
                                scale: value,
                                curve: Curves.bounceInOut,
                                duration: const Duration(milliseconds: 400),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => const PetPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      fixedSize: Size(value * 150, value * 44),
                                      primary: Color.fromARGB(255, 255, 0, 0),
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                     
                                        const Spacer(),
                                        Text('En otro momento',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:  Color.fromARGB(255, 0, 0, 0),
                                                fontSize: value * 16)),
                                        const Spacer(),
                                      
                                      ],
                                    )),
                              ))
                              
                        
                      
                        ],
                        

                        
                      );
                    }),
              ],
            ),
            const Gap(5),
            TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                curve: Curves.easeInExpo,
                duration: const Duration(milliseconds: 500),
                builder: (context, value, _) {
                  return Text(
                    'Informacion del peludito:',
                    style: TextStyle(
                        color: Styles.blackColor,
                        fontSize: value * 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  );
                }),
            const Gap(5),
            MediaQuery.removeViewPadding(
              context: context,
              removeTop: true,
              child: AnimatedList(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  initialItemCount: _packages.length,
                  key: listKey,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (c, i, animation) {
                    final package = Package.fromJson(groomingList[i]);
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-0.5, 0),
                        end: const Offset(0, 0),
                      ).animate(CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeIn,
                      )),
                      child: PackageCardContrac(package),
                    );
                  }),

                  
            ),

            
           
          ],
          
        ),
      ),
    );
  }
}
