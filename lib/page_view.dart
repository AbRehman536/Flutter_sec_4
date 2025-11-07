import 'package:flutter/material.dart';
import 'package:flutter_sec_4/models/onBoardingModels.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModel> screenList = [
    OnBoardingModel(image: "assets/images/Frame.png", title: "First Page"),
    OnBoardingModel(image: "assets/images/1348431.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/download.jpg", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: screenList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            Image.asset(screenList[index].image.toString()),
            Text(screenList[index].title.toString()),
            ElevatedButton(onPressed: (){}, child: Text("Next")),
          ],);
        },),
    );
  }
}
