import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'file:///C:/Users/ronil/AndroidStudioProjects/troca_app/lib/screens/base/base_screen.dart';
import 'package:troca_app/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());

}

void setupLocators(){

  GetIt.I.registerSingleton(PageStore());
  
}


 Future<void> initializeParse()async{
   await Parse().initialize(
       'iTyG6hrkjNsuDKyHY0QqYvdrhwgkuyBszO29i9GN',
       'https://parseapi.back4app.com/',
       clientKey: '1Dpar2zXKthrndQVnX9nOnD6W9wkhlBOnD8YSFsC',
       autoSendSessionId: true,
       debug: true
   );



}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'troca',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0
        ),
        cursorColor: Colors.green
      ),
      home: BaseScreen()

    );
  }
}