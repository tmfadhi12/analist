part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment(0.9, 0.0),
              colors: <Color>[
                Color(0xFF1025EC),
                Colors.white,
              ],
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.19,
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(36, 15, 36, 25),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3.0,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: TextField(
                          controller: email,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      GestureDetector(
                        onTap: () async {
                          SignInSignUpResult result = await AuthServices.signIn(
                              email.text, password.text);

                          if (result.user == null) {
                            print(result.message);
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            color: Color(0xFF2342B0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Sign In",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.65, 20, 0, 5),
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    color: Color(0xFF2342B0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(color: Color(0xffC4C4C4)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
