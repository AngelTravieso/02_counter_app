import 'package:flutter/material.dart';

class CounterFunctionsScreens extends StatefulWidget {
  const CounterFunctionsScreens({super.key});

  @override
  State<CounterFunctionsScreens> createState() =>
      _CounterFunctionsScreensState();
}

class _CounterFunctionsScreensState extends State<CounterFunctionsScreens> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              clickCounter != 1 ? 'Clicks' : 'Click',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: resetCounter,
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: incrementCounter,
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: decrementCounter,
          )
        ],
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      clickCounter++;
    });
  }

  void decrementCounter() {
    if (clickCounter == 0) return;
    setState(() {
      clickCounter--;
    });
  }

  void resetCounter() {
    setState(() {
      clickCounter = 0;
    });
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // Habilita un sonido o vibracion al tocar el boton (varia depende del dispositivo)
      enableFeedback: true,
      // Bordes redondeados
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
