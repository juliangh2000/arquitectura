import 'package:adoptme/pages/get_started.dart';
import 'package:adoptme/pages/home.dart';
import 'package:adoptme/utils/layouts.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: const Duration(milliseconds: 700),
          builder: (context, value, _) {
            return Column(
              children: [
                Opacity(
                  opacity: value,
                  child: SizedBox(
                      width: double.infinity,
                      height: Layouts.getSize(context).height * 0.30,
                      child: SvgPicture.asset(
                        'assets/svg/starter_header.svg',
                        fit: BoxFit.cover,
                      )),
                ),
                const Gap(25),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(' Iniciar Sesión',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Styles.blackColor,
                        fontSize: value * 26,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ).apply(fontWeightDelta: 2)),
                ),
                const Gap(5),
                Text(
                  'Adoptame, los dos necesitamos el amor',
                  textScaleFactor: value,
                  style: TextStyle(color: Styles.highlightColor),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Ingresar correo'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Ingresar contraseña'),
                ),
                const Gap(30),
                Opacity(
                  opacity: value,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Home()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                    child: const Text('🐶   Empezar   🐹 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
                Opacity(
                  opacity: value,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const GetStarted()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                    child: const Text('🐶 Registrase 🐹 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                )
              ],
            );
          }),
    );
  }
}
