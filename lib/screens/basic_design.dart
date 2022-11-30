import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Image(image: AssetImage('assets/phone.jpg')),
      const _Information(),
      const _ActionButtons(),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
            "Officia mollit ipsum sint ullamco Lorem cillum nulla ipsum ex eiusmod proident. Qui pariatur aliqua laboris non elit quis. Sint mollit enim pariatur anim est minim sit. Pariatur ut non adipisicing cillum pariatur non velit sit aliqua."),
      )
    ]));
  }
}

class _Information extends StatelessWidget {
  const _Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Lorem impsum dolor',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lorem Ipsum dolor',
                    style: TextStyle(color: Colors.black45),
                  )
                ]),
            Expanded(child: Container()),
            const Icon(
              Icons.star,
              color: Colors.red,
            ),
            const Text('41')
          ],
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _ButtonWithLabel(
            label: 'Call',
            icon: Icons.call,
          ),
          _ButtonWithLabel(label: 'Route', icon: Icons.map_sharp),
          _ButtonWithLabel(label: 'Share', icon: Icons.share)
        ],
      ),
    );
  }
}

class _ButtonWithLabel extends StatelessWidget {
  final String label;
  final IconData icon;
  const _ButtonWithLabel({required this.label, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        color: Colors.blueAccent,
        size: 30,
      ),
      Text(
        label.toUpperCase(),
        style: const TextStyle(color: Colors.blue),
      )
    ]);
  }
}
