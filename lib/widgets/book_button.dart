import 'package:adoptme/pages/pet_page..dart';
import 'package:adoptme/pages/serv_page.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
           Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => const ServPage()));
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Styles.highlightColor,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      ),
      child: const Text('Reservar',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
    );
  }
}
