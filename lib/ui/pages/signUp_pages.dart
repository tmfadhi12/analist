part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  TextEditingController jurusan = TextEditingController();
  TextEditingController kelas = TextEditingController();

  void notif() {
    int count = 0;

    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 100.0,
        child: Column(
          children: [
            Text("registrasi Berhasil"),
            RaisedButton(
              onPressed: () =>
                  Navigator.of(context).popUntil((_) => count++ >= 2),
              child: Text("OK"),
            ),
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 0.0),
                colors: <Color>[
                  Color(0xFF0A1898),
                  Color(0xFF2F80ED),
                ],
              ),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 38, color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(36, 15, 36, 25),
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          margin: EdgeInsets.only(top: 60),
                          child: TextFormField(
                            controller: username,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            controller: kelas,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Kelas',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            controller: jurusan,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Jurusan',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            controller: password,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            controller: confirmpass,
                            validator: (val) {
                              if (val != password.text) return 'Not Match';
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.004),
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: 'Confirm Password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context, '/signin');
                            },
                            child: Text(
                              "Already Have an Account ?",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        GestureDetector(
                          onTap: () async {
                            SignInSignUpResult result =
                                await AuthServices.signUp(
                              email.text,
                              password.text,
                              username.text,
                              kelas.text,
                              jurusan.text,
                            );

                            if (result.user == null) {
                              print(result.message);
                            } else {
                              notif();
                              print(result.user.toString());
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
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
