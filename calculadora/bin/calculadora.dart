import 'dart:io';
import 'package:calculadora/calculadora.dart';

void main() {
  print("Calculadora");

  // numro 1
  print("Digite o primeiro número:");
  double num1 = 0;
  try {
    num1 = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Valor inválido, utilizando 0");
  }

  // numero 2
  print("Digite o segundo número:");
  double num2 = 0;
  try {
    num2 = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Valor inválido, utilizando 0");
  }

  // operacao
  print("Digite a operação");
  String op = stdin.readLineSync()!;
  List operacoes = ["+", "-", "*", "/"];

  while (!operacoes.contains(op)) {
    print("Operação inválida. Digite novamente.");
    op = stdin.readLineSync()!;
  }

  // calcular
  double result = calculate(num1, num2, op);
  print("Resultado: $result");
}
