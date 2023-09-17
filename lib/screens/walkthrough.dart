import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'join.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {

  List pageInfos = [
    {
      "title": "Taze",
      "body": "Sipariş verildiğinde, en taze ürünler ile hazırlanır.",
      "img": "assets/on1.png",
    },
    {
      "title": "Hızlı Gönderim",
      "body": "En kısa sürede size teslim edilir",
      "img": "assets/on2.png",
    },
    {
      "title": "Kapıda Ödeme",
      "body": "Hiçbir ek ücret almadan kapıda ödeme sağlanır",
      "img": "assets/on3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      for(int i = 0; i<pageInfos.length; i++)
        _buildPageModel(pageInfos[i])
    ];

    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IntroductionScreen(
            pages: pages,
            onDone: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return const JoinApp();
                  },
                ),
              );
            },
            onSkip: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return const JoinApp();
                  },
                ),
              );
            },
            showSkipButton: true,
            skip: const Text("Geri"),
            next: const Text(
              "İleri",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            done: const Text(
              "Bitti",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildPageModel(Map item){
    return PageViewModel(
      title: item['title'],
      body: item['body'],
      image: Image.asset(
        item['img'],
        height: 185.0,
      ),
      decoration: PageDecoration(
        titleTextStyle: const TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w600,
        ),
        bodyTextStyle: const TextStyle(fontSize: 15.0),
        pageColor: Theme.of(context).primaryColor,
      ),
    );
  }
}