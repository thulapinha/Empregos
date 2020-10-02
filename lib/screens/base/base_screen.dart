import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:troca_app/stores/page_store.dart';

import '../home/home_screen.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  void initState() {
    super.initState();

    reaction(
            (_)=> pageStore.page,

      (page)=> pageController.jumpToPage(page)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
controller:  pageController,
        physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeScreen(),
            Container(color: Colors.black,),
            Container(color: Colors.blue),
            Container(color: Colors.white),
            Container(color: Colors.deepOrange),

          ],

      ),
    );
  }
}

