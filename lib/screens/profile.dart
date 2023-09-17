import 'package:dental_dentist/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';
import '../util/const.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Image.asset(
                    "assets/cm4.jpeg",
                    fit: BoxFit.cover,
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Jane Doe",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "jane@doefamily.com",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const SplashScreen();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Çıkış Yap",
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Container(height: 15.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Hesap Bilgileri".toUpperCase(),
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "İsim Soyisim",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Text(
                "Jane Mary Doe",
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.edit,
                  size: 20.0,
                ),
                onPressed: () {},
                tooltip: "Düzenle",
              ),
            ),
            const ListTile(
              title: Text(
                "E-mail",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "jane@doefamily.com",
              ),
            ),
            const ListTile(
              title: Text(
                "Telefon Numarası",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "+1 816-926-6241",
              ),
            ),
            const ListTile(
              title: Text(
                "Adres",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "1278 Loving Acres RoadKansas City, MO 64110",
              ),
            ),
             ListTile(
                    title: const Text(
                      "Koyu Tema",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Switch(
                      value: Provider.of<AppProvider>(context).theme ==
                              LightColorSet()
                          ? false
                          : true,
                      onChanged: (v) async {
                        if (v) {
                          Provider.of<AppProvider>(context, listen: false)
                              .setTheme(DarkColorSet(), "dark");
                        } else {
                          Provider.of<AppProvider>(context, listen: false)
                              .setTheme(LightColorSet(), "light");
                        }
                      },
                      activeColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
