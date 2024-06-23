// ignore_for_file: prefer_const_constructors

import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

class MyChipScreen extends StatefulWidget {
  const MyChipScreen({super.key});

  @override
  State<MyChipScreen> createState() => _MyChipScreenState();
}

class _MyChipScreenState extends State<MyChipScreen> {
  final List<String> myNameList = [
    'vishag',
    'devan',
    'dev',
    'abc',
  ];
  int selectedIndex = 0;

  void onPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Widget"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ChipList(
                activeTextColorList: [Colors.amber],
                listOfChipNames: myNameList,
                listOfChipIndicesCurrentlySelected: selectedIndex != null
                    ? [selectedIndex!]
                    : [], //condition checking to update the selected index
                showCheckmark: false,
                borderRadiiList: [30],
                extraOnToggle: onPressed,
                shouldWrap: true,
                spacing: 10,
                supportsMultiSelect: false,
                tooltips:
                    myNameList, // Ensure each chip has a corresponding tooltip
                wrapAlignment: WrapAlignment.center,
                wrapCrossAlignment: WrapCrossAlignment.start,
                inactiveBgColorList: [Colors.amber],
                activeBorderColorList: [Colors.black],
                activeBgColorList: [Colors.grey],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            if (selectedIndex != null)
              Text(
                'Selected name: ${myNameList[selectedIndex!]}',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
