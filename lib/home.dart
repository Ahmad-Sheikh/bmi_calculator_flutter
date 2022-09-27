import 'package:flutter/material.dart';
import 'container_widget.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffEB1555);
const activeCardColor = Color(0xff1D1E33);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ContainerWidget(myColor: activeCardColor),
                ),
                Expanded(
                  child: ContainerWidget(myColor: activeCardColor),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ContainerWidget(myColor: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ContainerWidget(myColor: activeCardColor),
                ),
                Expanded(
                  child: ContainerWidget(myColor: activeCardColor),
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
