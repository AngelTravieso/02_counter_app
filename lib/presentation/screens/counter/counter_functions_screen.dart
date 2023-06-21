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
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: incrementCounter,
              child: const Icon(Icons.refresh_outlined),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              // StadiumBorder (borde circular)
              shape: const StadiumBorder(),
              onPressed: incrementCounter,
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: decrementCounter,
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ));
  }

  void incrementCounter() {
    setState(() {
      clickCounter++;
    });
  }

  void decrementCounter() {
    if (clickCounter == 0) {
      return;
    }
    setState(() {
      clickCounter--;
    });
  }
}
