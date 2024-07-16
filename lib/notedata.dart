import 'dart:core';

class theNotesofaNote {
final String title;
final String body;
final String date;
final bool mustRead;

theNotesofaNote({required this.title, required this.body, required this.date,this.mustRead = false});
}

List<theNotesofaNote> PersonalNotes = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
];
List<theNotesofaNote> Tasks = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
];List<theNotesofaNote> Books = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
   theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
];
List<theNotesofaNote> Reminders = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05",),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05",),
];
List<theNotesofaNote> Recreationals = [
];

List<theNotesofaNote> Assets = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  ];
List<theNotesofaNote> CheckUp  = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  ];
List<theNotesofaNote> Meetings = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", mustRead: true),
  ];
List<theNotesofaNote> Grocceries = [
  theNotesofaNote(title: "Today's Quote", body: "I don't trust a nobody I know a tight bond will wear", date: "Sat, 8:05", ),
  ];

Map<String, List<theNotesofaNote>> forEachFolder = {
  "Groceries" : Grocceries,
  "Tasks To Do" : Tasks,
  "Remind Me" : Reminders,
  "Take a Break" : Recreationals,
  "Books To Read" : Books,
  "Assets" : Assets,
  "Check up on" : CheckUp,
  "To Attend" : Meetings,
  "Personal Notes" : PersonalNotes,
};
