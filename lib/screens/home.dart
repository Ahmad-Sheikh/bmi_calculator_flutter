import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/components/roundicon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/container_widget.dart';
import '../components/container_content_widget.dart';
import 'constant.dart';
import '../components/bottom_button_widget.dart';

int heights = 180;
int weights = 65;
int ages = 20;

enum Gender {
  male,
  female,
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A0E21),
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    myColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    containerChild: ContainerContentWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    myColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    containerChild: ContainerContentWidget(
                        icon: FontAwesomeIcons.venus, label: "Female"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {});
                    },
                    myColor: kActiveCardColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              heights.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              "cm",
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: const Color(0xff8D8E98),
                            thumbColor: const Color(0xffEB1555),
                            overlayColor: const Color(0x29EB1555),
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 30.0,
                            ),
                          ),
                          child: Slider(
                              value: heights.toDouble(),
                              min: 100.0,
                              max: 250.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  heights = newValue.round();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {});
                    },
                    myColor: kActiveCardColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Weight', style: kLabelTextStyle),
                        Text(weights.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPresseds: () {
                                setState(() {
                                  weights--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPresseds: () {
                                setState(() {
                                  weights++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {});
                    },
                    myColor: kActiveCardColor,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Age', style: kLabelTextStyle),
                        Text(ages.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPresseds: () {
                                setState(() {
                                  ages--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPresseds: () {
                                setState(() {
                                  ages++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: "Calculate",
            onTaps: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen()));
            },
          ),
        ],
      ),
    );
  }
}
