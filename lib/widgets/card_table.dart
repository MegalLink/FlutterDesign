import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _Card(
              color: Colors.blue,
              text: 'General',
              icon: Icons.border_all,
            ),
            _Card(
              color: Colors.redAccent,
              text: 'Transport',
              icon: Icons.car_rental,
            )
          ],
        ),
        TableRow(
          children: [
            _Card(
              color: Colors.pink,
              text: 'Paper',
              icon: Icons.document_scanner,
            ),
            _Card(
              color: Colors.orange,
              text: 'Shoppping',
              icon: Icons.shop,
            )
          ],
        ),
        TableRow(
          children: [
            _Card(
              color: Colors.purple,
              text: 'Movie',
              icon: Icons.movie,
            ),
            _Card(
              color: Colors.pinkAccent,
              text: 'Calendar',
              icon: Icons.calendar_today,
            )
          ],
        ),
        TableRow(
          children: [
            _Card(
              color: Colors.green,
              text: 'Rating',
              icon: Icons.abc_sharp,
            ),
            _Card(
              color: Colors.teal,
              text: 'Alarm',
              icon: Icons.access_alarm_rounded,
            )
          ],
        ),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _Card({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 25,
            child: Icon(
              color: Colors.white,
              icon,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        //ClipRRect is necessary beacause blur is propagin to all widgets
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(62, 66, 187, 0.7)),
              child: child),
        ),
      ),
    );
  }
}
