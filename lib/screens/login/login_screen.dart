import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:troca_app/screens/signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entrar',

        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
elevation: 15,
              child: Padding(padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Acessar com E-mail:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[900],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, bottom: 4,top: 8),
                      child: Text(
                        "E-mail",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Senha",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            child: Text("Esqueceu sua senha?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                            ),
                            onTap: (){

                            },
                          ),

                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                     obscureText: true,
                    ),
                    const SizedBox(height: 16,),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text("ENTRAR"),
                        textColor: Colors.white,
                        elevation: 15,
                        onPressed: (){


                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(padding: const EdgeInsets.only(top: 20, bottom: 12),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        Text(
                          "Não tem conta?",
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_)=>SignUpScreen()));


                          },
                          child: Text("Cadastre-se",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),

                        ),

                      ],
                    ),
                    ),

                  ],
              ),
              ),

            ),
          ),
        ),
      ),

    );
  }
}
