import 'package:notes/notes.dart' show commands, onComand;
import 'dart:io';

void cabecalho() {
  print("██████   █████  ██████  ████████");
  print("██   ██ ██   ██ ██   ██    ██   ");
  print("██   ██ ███████ ██████     ██   ");
  print("██   ██ ██   ██ ██   ██    ██   ");
  print("██████  ██   ██ ██   ██    ██   ");
}

void main() {
  cabecalho();
  while (true) {
    print("Digite um comando: $commands");
    var command = stdin.readLineSync();
    while (!commands.containsKey(command)) {
      print("Digite um comando válido: $commands");
      command = stdin.readLineSync();
    }
    onComand(command.toString());
  }
}
