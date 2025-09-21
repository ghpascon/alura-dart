import 'dart:io';

void main() {
  print("Digite seu nome:");
  String? name = stdin.readLineSync();
  print("Olá, $name");
  print("Seja bem vindo!");
}
