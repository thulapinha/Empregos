import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:troca_app/screens/login/login_screen.dart';
import 'package:troca_app/screens/signup/components/field_title.dart';
import 'package:troca_app/stores/signup_store.dart';

class SignUpScreen extends StatelessWidget {
  final SignupStore signupStore = SignupStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastro',
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
                  borderRadius: BorderRadius.circular(16)),
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FieldTitle(
                      title: 'Apelido',
                      subtitle: 'Como aparecer no seu anúncio',
                    ),
                    Observer(
                      builder: (_){
                        return TextField(
                        decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                    hintText: 'Esemplo: Ronilson B.',
                    isDense: true,
                    errorText: signupStore.nameErro,
                    ),
                    onChanged: signupStore.setName,
                    );
                    }),
                    SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um E-mail de confirmação.',
                    ),
                    Observer(builder: (_){
                      return TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'Esemplo: ronilson@gmail.com',
                            isDense: true,
                            errorText: signupStore.emailError
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        onChanged: signupStore.setEmail,
                      );
                    }),
                    SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'Celular',
                      subtitle: 'Proteja sua conta!',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: '(99)99999-9999',
                        isDense: true,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter(),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'Senha',
                      subtitle: 'Use letras, números e caracteres especiais',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'Confirma a Senha',
                      subtitle: 'Repita a Senha',
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text("CADASTRAR"),
                        textColor: Colors.white,
                        elevation: 15,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 12),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          Text(
                            "já tenho conta!   ",
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => LoginScreen()));
                            },
                            child: Text(
                              "Fazer Login",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
