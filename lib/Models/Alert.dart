class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({required this.title, required this.subject, required this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: "Test",
    subject: "DBMS",
    time: DateTime.parse("2022-02-22 14:30:00"),
  )
];
