import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_widget.dart';
import 'container_content_widget.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffEB1555);
const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xff111328);

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
                        ? activeCardColor
                        : inactiveCardColor,
                    containerChild: ContainerContentWidget(
                        icon: FontAwesomeIcons.mars, label: "Male"),
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
                        ? activeCardColor
                        : inactiveCardColor,
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
                    myColor: activeCardColor,
                    containerChild: Column(
                      children: const [
                        Icon(FontAwesomeIcons.mars),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        )
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
                    myColor: activeCardColor,
                    containerChild: Column(
                      children: const [
                        Icon(FontAwesomeIcons.mars),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    onPresseds: () {
                      setState(() {});
                    },
                    myColor: activeCardColor,
                    containerChild: Column(
                      children: const [
                        Icon(FontAwesomeIcons.mars),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
