class Alert {
  final String title;
  final String subject;
  final String desc;
  final DateTime time;

  Alert({required this.title, required this.subject, required this.time, this.desc = "No description available"});
}

List<Alert> recentAlerts = [
  Alert(
    title: "Test",
    subject: "DBMS",
    time: DateTime.parse("2022-08-22 14:30:00"),
  ),Alert(
    title: "Test",
    subject: "CTP",
    time: DateTime.parse("2022-04-22 14:30:00"),
  ),Alert(
    title: "Assignment",
    subject: "DBMS",
    time: DateTime.parse("2022-02-12 14:30:00"),
  ),Alert(
    title: "Quiz",
    subject: "VF",
    time: DateTime.parse("2022-01-20 14:30:00"),
  ),Alert(
    title: "Test",
    subject: "PC",
    time: DateTime.parse("2022-02-22 14:30:00"),
  ),
];
