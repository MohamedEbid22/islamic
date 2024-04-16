import 'package:flutter/material.dart';

class ListOfAzker extends StatelessWidget {
  final String text;
  final String imag;
  final Function()? onTap;

  const ListOfAzker({
    Key? key,
    required this.text,
    required this.onTap,
    required this.imag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .02,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Card(
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      text,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .022,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 171, 171, 171),
                      ),
                    ),
                    leading: Image.asset(imag),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
