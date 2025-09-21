import 'package:collections/collections.dart' as collections;

void lists() {
  List emails = ["email1@gmail.com", "email2@gmail.com", "email3@gmail.com"];
  String content = "This is an list email";
  for (var email in emails) {
    collections.sendEmail(email, content);
  }
}

void sets() {
  Set emails = {"email1@gmail.com", "email2@gmail.com"};
  emails.add("email3@gmail.com");
  emails.add("email1@gmail.com"); //already exists so it will not be added again
  String content = "This is an set email";
  for (String email in emails) {
    collections.sendEmail(email, content);
  }
}

void maps() {
  Map email = {
    "email1@gmail.com": "Email for John",
    "email2@gmail.com": "Email for Jane",
  };
  for (var entry in email.entries) {
    collections.sendEmail(entry.key, entry.value);
  }
}

void verifications() {
  print("-" * 50);
  print("List");
  List emails = ["email1@gmail.com", "email2@gmail.com", "email3@gmail.com"];
  print(emails.contains("ABC"));
  print(emails.contains("email1@gmail.com"));
  print("Map");
}

void main() {
  lists();
  sets();
  maps();
  verifications();
}
