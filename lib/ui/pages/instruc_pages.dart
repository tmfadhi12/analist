part of 'pages.dart';

class InstrucPage extends StatefulWidget {
  @override
  _InstrucPageState createState() => _InstrucPageState();
}

class _InstrucPageState extends State<InstrucPage> {
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
          body: Container(
        child: PageIndicatorContainer(
          child: PageView(
            children: <Widget>[
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/images/instruction2.png',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    Text(
                      "ANALIST",
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                          "Web analyzer is made for timesheet that is needed, and this website is used for students and teachers"),
                    )
                  ],
                ),
              ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.24,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/images/instruction.png',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    Text(
                      "Progress",
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                          "This website is used for students as regular users and teachers as the admin or the host"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                            color: Color(0xFF2342B0),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Start",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            controller: controller,
          ),
          align: IndicatorAlign.bottom,
          length: 2,
          indicatorSpace: 20.0,
          padding: const EdgeInsets.all(40),
          indicatorColor: Colors.white10,
          indicatorSelectorColor: Colors.white,
          // shape: IndicatorShape.circle(size: 12),
          shape: IndicatorShape.roundRectangleShape(
              size: Size.square(12), cornerSize: Size.square(3)),
          // shape: IndicatorShape.oval(size: Size(12, 8)),
        ),
      )),
    );
  }
}
