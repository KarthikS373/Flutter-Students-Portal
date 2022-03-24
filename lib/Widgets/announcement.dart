import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:studentsportal/Models/announcmentList.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcements.length,
      itemBuilder: (BuildContext context, int index) {
        AnnouncementList announcement = announcements[index];
        final DateFormat _dateFormat = DateFormat("hh:mm a");
        int _timeLeft = DateTime.now().difference(announcement.time).inHours;
        _timeLeft = (_timeLeft < 0) ? -(_timeLeft) : 0;
        double _percent = _timeLeft / 48;
        return Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: 130,
              width: 15,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              height: 130,
              width: 325,
              decoration: const BoxDecoration(
                color: Colors.black,
                // gradient:LinearGradient(colors: [
                //     Colors.grey.withOpacity(0.5),
                //     Colors.grey.withOpacity(0.1),
                //     Colors.grey.withOpacity(0.7),
                //     Colors.grey.withOpacity(1),
                // ]),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            announcement.title,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              wordSpacing: 2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.timelapse_outlined,
                            color: Theme.of(context).accentColor,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "${DateTime.now().weekday == announcement.time.weekday ? "Today" : DateFormat("EEEE").format(announcement.time)}, ${_dateFormat.format(announcement.time)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Theme.of(context).accentColor,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            announcement.subject,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "$_timeLeft",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "${(_timeLeft == 1 || _timeLeft == 0 ? "hour" : "hours")} left",
                          style: const TextStyle(
                            // color: _customPaint(context, _percent),
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
