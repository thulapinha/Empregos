import 'package:flutter/material.dart';
import 'file:///C:/Users/ronil/AndroidStudioProjects/troca_app/lib/components/custom_drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(),
        drawer: CustomDrawer(),

      ),
    );
  }
}
