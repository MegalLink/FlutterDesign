import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
              colors: [Color(0xff5EEBC5), Color(0xff30BAD6)])),
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [_MainPage(), _SecondaryPage()],
      ),
    ));
  }
}

class _SecondaryPage extends StatelessWidget {
  const _SecondaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
        onPressed: () {},
        child: const Text(
          'Bienvenido',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      )),
    );
  }
}

class _MainPage extends StatelessWidget {
  const _MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: const [_Background(), _MainContent()],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        width: double.infinity,
        child: const Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/scroll-1.png',
            )));
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      //para que no tape las cositas del android o ios
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            '11 º',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()), //Toma todo el espacio posible
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
