import 'package:flutter/material.dart';
import 'package:forms/const.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({super.key});

  @override
  State<RegisterUI> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool encrypted = false;

    GlobalKey<FormState> formKey = GlobalKey();

    void toggle(){
      setState(() {
        encrypted = !encrypted;
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: width * 0.85,
              height: height * 0.7,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.purple.shade200,
                    Colors.purple.shade300,
                    Colors.purple,
                  ]
                ),
                // color: Colors.purple[300],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width * 1.5),
                  bottomRight: Radius.circular(width * 1.45),
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.08,
              ),
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Welcome to our mobile community",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: height * 0.1),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    constraints: BoxConstraints(
                      // maxHeight: height * 0.3,
                      maxWidth: width * 0.85,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value){
                                return value!.isEmpty ? "Username is required" : null;
                              },
                              controller: username,
                              decoration: inputDecor("Username"),
                            ),
                            TextFormField(
                              validator: (value){
                                return value!.isEmpty ? "Input fiend cannot be blank" : null;
                              },
                              controller: email,
                              decoration: inputDecor("E-mail")
                            ),
                            TextFormField(
                              obscureText: encrypted,
                              validator: (value){
                                return value!.isEmpty ? "Password field cannot be blank" : value.length < 6 ? "Password should contain at least 6 characters." : null;
                              },
                              controller: password,
                              decoration: inputDecor("Password").copyWith(
                                suffixIcon: GestureDetector(
                                  onTap: (){
                                    toggle();
                                  },
                                  child: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: height * 0.55,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.45,
                      top: height * 0.03,
                    ),
                    child: TextButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){

                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "Log In instead",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.purple,
                            ),
                          ),
                          Container(
                            height: 2,
                            width: ("Log In instead".length.toDouble()) * 6,
                            color: Colors.purple[300],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  Center(
                    child: Text(
                      "In Mobile Development we focus on making your dream, a reality.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width * 0.35,
                        height: 2,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.handshake_outlined,
                        color: Colors.purple.shade300,
                        size: 30,
                      ),
                      Container(
                        width: width * 0.35,
                        height: 2,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textButton(
                        Colors.white,
                        Icons.open_in_browser,
                        "Google",
                        Colors.black,
                      ),
                      textButton(
                        Colors.blue.shade900,
                        Icons.facebook,
                        "Facebook",
                        Colors.white,
                      ),
                    ],
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}