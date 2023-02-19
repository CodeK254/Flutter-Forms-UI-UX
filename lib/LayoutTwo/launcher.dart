import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LauncherRegister extends StatefulWidget {
  const LauncherRegister({super.key});

  @override
  State<LauncherRegister> createState() => _LauncherRegisterState();
}

class _LauncherRegisterState extends State<LauncherRegister> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
    );
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple.shade900,
              Colors.blue.shade900,
              Colors.purple.shade900,
            ],
            begin: Alignment.topLeft,
            // stops: [
            //   height * 0.3,
            //   height * 0.4,
            //   height * 0.3,                
            // ],
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.15),
              child: Container(
                height: 250,
                width: 600,
                color: Colors.transparent,
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                  // fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Plantly",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Here at Mobile Development Community we encourage students to pursue various paths for a successfull future.",
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/login");
                },
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/register");
                },
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}