part of 'pages.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                AuthServices.signOut()
                    .then((value) => Navigator.of(context).pop());
              },
            ),
            ListTile(),
            ListTile(),
            ListTile(),
          ],
        )),
      ),
    );
  }
}
