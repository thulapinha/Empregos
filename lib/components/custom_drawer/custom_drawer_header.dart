import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:troca_app/screens/login/login_screen.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_)=> LoginScreen())
        );
      },
      child: Container(
        color: Colors.blue,
        height: 95,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Icon(Icons.person, color: Colors.white, size: 40,),
            const SizedBox( width: 20,),
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Acesse Sua conta!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  Text(
                      "Clique aqui!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
