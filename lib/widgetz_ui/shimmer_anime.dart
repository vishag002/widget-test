import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utilis/image_constant.dart';

class ShimmerEffScreen extends StatefulWidget {
  const ShimmerEffScreen({super.key});

  @override
  State<ShimmerEffScreen> createState() => _ShimmerEffScreenState();
}

class _ShimmerEffScreenState extends State<ShimmerEffScreen> {
  List<String> myList = [
    ImageConstants.img1,
    ImageConstants.img3,
    ImageConstants.img4,
    ImageConstants.img5,
    ImageConstants.img6,
    ImageConstants.img7,
    ImageConstants.img8,
    ImageConstants.img9,
    ImageConstants.img10,
    ImageConstants.img11,
    ImageConstants.img12,
    ImageConstants.img13,
    ImageConstants.img14,
    ImageConstants.img15,
    ImageConstants.img2,
  ];
  //loading
  bool isLoading = true;

  void startLoading() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer Effect"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(
                  myList[index],
                ),
                scale: 1,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                isLoading
                    ? Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          /* height: 30,
                          width: 115, */
                          color: Colors.grey.shade300,
                          child: Text(
                            "@shoeStore.com",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        /* height: 30,
                        width: 115, */
                        color: Colors.black,
                        child: Text(
                          "@shoeStore.com",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
