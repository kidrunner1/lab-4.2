import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lab4_2/neon_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MY NEON BUTTON'),
        ),
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NeonButton(Colors.red, shadowColor: Colors.red),
            NeonButton(Colors.red, shadowColor: Colors.amber),
            NeonButton(Colors.red, shadowColor: Colors.greenAccent),
            NeonButton(Colors.red, shadowColor: Colors.white),
            NeonButton(Colors.red, shadowColor: Colors.blue),
            SpinKitCircle(
              size: 140,
              itemBuilder: (context, index) {
                final colors = [
                  Colors.blue,
                  Colors.red,
                  Colors.amber,
                  Colors.purple,
                  Colors.green,
                  Colors.orange
                ];
                final color = colors[index % colors.length];
                return DecoratedBox(
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle));
              },
            )
          ],
        )));
  }
}
