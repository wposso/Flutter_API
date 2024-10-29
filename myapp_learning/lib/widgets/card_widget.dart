// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  final FaIcon picture;
  final String tittle;
  final String subtittle;
  const CardWidget(
      {super.key,
      required this.picture,
      required this.tittle,
      required this.subtittle});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 1, right: 1, bottom: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: Colors.red,
                )
              ],
            ),
            Container(alignment: Alignment.center, child: picture),
            const SizedBox(
              height: 15,
            ),
            Text(
              tittle,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              subtittle,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
