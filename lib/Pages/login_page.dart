import 'package:flutter/material.dart';
import 'package:flutter_catalog/utiles/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String name = "";
  bool changeButton = false;

  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
       child: Column(
        children: [
          Image.asset("images/login_images.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 25.0,),
          Text("Welcome $name",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 23.0,
          ),
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: ("Enter username"),
                  labelText: ("user Name"),
                ),
                onChanged: (value){
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: ("Enter password"),
                  labelText: ("Password"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;

                  });
                  await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homePageRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                height: 50,
                width: changeButton? 50: 150,
                // color: Colors.deepPurple,
                alignment: Alignment.center,
                child: changeButton? Icon(Icons.done,
                color : Colors.white):
                Text
                  ("login",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                borderRadius: BorderRadius.circular(changeButton? 50 : 8)
              ),

              // ElevatedButton(
              //   child: Text("login"),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homePageRoute);
              //   },
              // )
              )
              )
            ],
            ),
          )
        ],
      )
    ),
    );

  }
}
