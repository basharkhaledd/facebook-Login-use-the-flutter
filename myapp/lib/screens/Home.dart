import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String restaurant = " ";
  String restauran = " ";
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.plus_one_rounded,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.message, color: Colors.black)),
          ],
          title: Text(
            "facebook",
            style: TextStyle(color: Colors.blue.shade900),
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, bottom: 70, top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(

                      // border: UnderlineInputBorder(),
                      labelText: 'Search for any thing',
                      hintText: "Search",
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      icon: Icon(Icons.search)),
                ),
              ),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjv64YoCNOOg_WWKl4YivAVC0yj3PIaLGeg&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: c,
                  onChanged: (val) {
                    setState(() {
                      c = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_womCcmX5csUIuIZjsetyrGz63wiJbHgJew&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: d,
                  onChanged: (val) {
                    setState(() {
                      d = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjv64YoCNOOg_WWKl4YivAVC0yj3PIaLGeg&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: c,
                  onChanged: (val) {
                    setState(() {
                      c = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_womCcmX5csUIuIZjsetyrGz63wiJbHgJew&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: d,
                  onChanged: (val) {
                    setState(() {
                      d = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjv64YoCNOOg_WWKl4YivAVC0yj3PIaLGeg&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: c,
                  onChanged: (val) {
                    setState(() {
                      c = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_womCcmX5csUIuIZjsetyrGz63wiJbHgJew&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: d,
                  onChanged: (val) {
                    setState(() {
                      d = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjv64YoCNOOg_WWKl4YivAVC0yj3PIaLGeg&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: c,
                  onChanged: (val) {
                    setState(() {
                      c = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_womCcmX5csUIuIZjsetyrGz63wiJbHgJew&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: d,
                  onChanged: (val) {
                    setState(() {
                      d = val!;
                    });
                  }),
              Divider(
                height: 30,
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
