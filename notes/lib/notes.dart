import 'dart:io';

Map commands = {"1": "Adicionar nota", "2": "Listar notas", "3": "Sair"};

List notas = [];

void onComand(String command) {
  if (command == "1") {
    adicionarNota();
  } else if (command == "2") {
    listarNotas();
  } else if (command == "3") {
    exit(0);
  } else {
    print("Comando inválido");
  }
}

void adicionarNota() {
  print("Digite a sua nota");
  var note = stdin.readLineSync();
  try {
    notas.add(note);
  } catch (e) {
    print("Erro ao adicionar nota: $e");
  }
}

void listarNotas() {
  for (var i in notas) {
    print(i);
  }
}
