import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_widget.dart';
import 'container_content_widget.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffEB1555);
const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xff111328);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ContainerWidget(
                      myColor: maleCardColor,
                      containerChild: ContainerContentWidget(
                          icon: FontAwesomeIcons.mars, label: "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ContainerWidget(
                      myColor: femaleCardColor,
                      containerChild: ContainerContentWidget(
                          icon: FontAwesomeIcons.venus, label: "Female"),
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
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}
