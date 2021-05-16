part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseUser user;

  @override
  void initState() {
    super.initState();
    initUser();
  }

  initUser() async {
    user = await auth.currentUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFFFFF),
                    Color(0xFF0A1898),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 6.0,
                            blurRadius: 30.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.017,
                          ),
                          Text(
                            "${user.email}",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Student",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: MediaQuery.of(context).size.width * .03,
                    mainAxisSpacing: MediaQuery.of(context).size.height * 0.0,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 20, 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2.0,
                              blurRadius: 15.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/alquran');
                                },
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/laptop.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                    ),
                                    Text(
                                      "Laptop",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 12, 0, 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2.0,
                              blurRadius: 15.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/alquran');
                                },
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/prayer.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                    ),
                                    Text(
                                      "Prayer",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/setting');
          },
          child: const Icon(Icons.settings),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
