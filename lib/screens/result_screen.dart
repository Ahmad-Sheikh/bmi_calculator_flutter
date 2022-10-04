import 'package:flutter/material.dart';
import 'constant.dart';
import '../components/container_widget.dart';
import '../components/bottom_button_widget.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E21),
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Result",
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerWidget(
              myColor: kActiveCardColor,
              onPresseds: () {},
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Your BMI result is quite low you should eat more and healthy food",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "Re-Calculate",
            onTaps: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
