import 'package:flutter/material.dart';
import 'package:troca_app/helpers/extencions.dart';
import 'package:mobx/mobx.dart';

part "signup_store.g.dart";

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {
  @observable
  String name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name != null && name.length > 6;
  String get nameErro {
    if (name == null || nameValid)
      return null;
    else if (name.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Nome muito curto';
  }

  @observable
  String email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValido => email != null && email.isEmailValido();
  String get emailError {
    if(email == null || emailValido)
      return null;
    else if (email.isEmpty)
      return "Campo obrigatório";
    else
      return "E-mail inválido";

  }

}
