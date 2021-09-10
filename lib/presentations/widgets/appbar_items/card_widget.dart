import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/widgets/appbar_items/avatar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Container getCard() {
  return Container(
    width: 350,
    height: 300,
    margin: const EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: KitchenColors.inkDark,
      borderRadius: BorderRadius.circular(14.5),
      boxShadow: [
        const BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 3),
            blurRadius: 0.5,
            spreadRadius: 0.5),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 90,
          alignment: Alignment.topCenter,
          child: getAvatar(),
        ),
        ElevatedButton(
            child: Text(
              "Email: m.karp-flat@hotmail.com",
              style: TextStyle(
                backgroundColor: Colors.lightBlue,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              _launchURL();
            }),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: Text(
            "Tel. : 015785064675",
            style: TextStyle(
                backgroundColor: Colors.lightBlue,
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          onPressed: () {
            customLaunch('tel: 004915785064675');
          },
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Adresse: Beispielstraße 23",
              style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text('12350 Berlin',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white))
            // Avatar
          ],
        )
      ],
    ),
  );
}

//Plan B zum ausprobieren für Emails und Anrufe-> leichter
void customLaunch(String phone) async {
  if (await canLaunch(phone)) {
    await launch(phone);
  } else {
    print('Could not launch $phone');
  }
}

/*void _createEmail() async {
  const emailaddress =
      'mailto:m.karp-flat@hotmail.com?subject=Sample Subject&body=This is a Sample email';

  if (await canLaunch(emailaddress)) {
    await launch(emailaddress);
  } else {
    throw 'Could not Email';
  }
}

 Alternative funktioniert nicht
final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'm.karp-flat@hotmail.com',
    queryParameters: {'subject': 'Anfrage Küchenmontage'});


String email = "contact@ouiquit.com";
_launchEmail() async {
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}
*/

//3 Versuch Email Launcher
void _launchURL() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'm.karp-flat@hotmail.com',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}
