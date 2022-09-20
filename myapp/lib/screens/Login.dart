import 'package:flutter/material.dart';
import 'package:myapp/screens/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool a = false;
  String myselecteditem = "English";
  List listItem = [
    "English",
    "Francais",
    "Espanol",
    "Turkce",
    "اردو",
    "Italiano",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT1MzB_gsJsX92DBKr-6KZqpsgUy8uX62KEg&usqp=CAU",
              ),
            ),
          ),
          Center(
            child: DropdownButton(
                value: myselecteditem,
                icon: Icon(Icons.language),
                items: listItem
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    myselecteditem = val.toString();
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Phone or email',
                  hintText: "",
                  contentPadding: EdgeInsets.all(7),
                  icon: Icon(Icons.person)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  // border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "",
                  labelText: 'Password',
                  icon: Icon(Icons.password)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: CheckboxListTile(
                title: Text("save password on this web"),
                value: a,
                onChanged: (val) {
                  setState(() {
                    a = val!;
                  });
                }),
          ),
          Container(
            width: 320,
            margin: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue.shade900,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30),
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                  color: Color(0xFF0D47A1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              "____________________ OR _____________________",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Container(
            width: 280,
            margin: EdgeInsets.only(top: 50, left: 60, right: 60),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.green.shade900,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text(
                  "Create new Facebook account",
                  style: TextStyle(fontSize: 15),
                )),
          )
        ],
      ),
    );
  }
}
