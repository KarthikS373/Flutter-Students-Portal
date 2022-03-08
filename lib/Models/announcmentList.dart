class AnnouncementList {
  final String title;
  final String subject;
  final DateTime time;
  final String desc;

  AnnouncementList(
      {required this.title,
      required this.subject,
      required this.time,
      required this.desc});
}

List<AnnouncementList> announcements = [
  AnnouncementList(
    title: "Title",
    subject: "subject",
    time: DateTime.parse("2022-02-22 14:30:00"),
    desc: "This is a test description"
  ),

  AnnouncementList(
    title: "Title 2",
    subject: "subject 2",
    time: DateTime.parse("2022-01-22 07:30:00"),
    desc: "This is a test description 2"
  ),
];
