import 'package:dental_dentist/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';


class JoinApp extends StatefulWidget {
  const JoinApp({super.key});

  @override
  _JoinAppState createState() => _JoinAppState();
}



class _JoinAppState extends State<JoinApp> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 2);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: ()=>Navigator.pop(context),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).primaryColorLight,
          labelStyle: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
          tabs: const <Widget>[
            Tab(
              text: "Giriş Yap",
            ),
            Tab(
              text: "Kayıt Ol",
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          LoginScreen(),
          RegisterScreen(),
        ],
      ),
    );
  }
}
