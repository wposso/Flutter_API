// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SlidableWidget extends StatelessWidget {
  final String tittle;
  final String subtittle;
  final FaIcon picture;

  const SlidableWidget(
      {super.key,
      required this.tittle,
      required this.subtittle,
      required this.picture});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SlidableAutoCloseBehavior(
        child: Slidable(
            startActionPane:
                const ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                  icon: Icons.favorite,
                  backgroundColor: Colors.green,
                  onPressed: null),
              SlidableAction(
                  icon: Icons.message,
                  backgroundColor: Colors.blue,
                  onPressed: null)
            ]),
            endActionPane: const ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  onPressed: null)
            ]),
            child: Container(
              color: const Color.fromARGB(255, 242, 241, 238),
              child: ListTile(
                leading: picture,
                title: Text(
                  tittle,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(subtittle),
              ),
            )),
      ),
    );
  }
}
