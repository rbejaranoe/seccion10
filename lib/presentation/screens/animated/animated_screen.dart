import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 300;
  double height = 300;
  Color color = Colors.indigo;
  double radius = 10;
  changeShape() {
    var random = Random();
    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 50;
    radius = random.nextDouble() * 50;
    color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenedor Animado"),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeOutCubic,
          duration: const Duration(milliseconds: 400),
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius <= 0 ? 0 : radius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
