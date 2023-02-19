import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_forms/Const_Widgets/CustomTextField.dart';
import 'package:flutter_forms/const.dart';

class PlantlyRegister extends StatefulWidget {
  const PlantlyRegister({super.key});

  @override
  State<PlantlyRegister> createState() => _PlantlyRegisterState();
}

class _PlantlyRegisterState extends State<PlantlyRegister> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pword = TextEditingController();
  TextEditingController cPword = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

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
          image: const DecorationImage(
            image: AssetImage("assets/dp.png"),
            fit: BoxFit.cover
          )
        ),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.02,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: width * 0.04,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: width * 0.035,
                        backgroundColor: Colors.purple[900],
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.1),
              const Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              const Center(
                child: Text(
                  "Create plantly Account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
              CustomTextField(
                label: "Username here", 
                icon: Icons.person, 
                controller: username,
              ),
              CustomTextField(
                label: "Enter your e-mail", 
                icon: Icons.email_outlined, 
                controller: email,
              ),
              CustomTextField(
                label: "Password", 
                icon: Icons.password, 
                controller: pword,
                obsecureText: true,
              ),
              CustomTextField(
                label: "Confirm Password", 
                icon: Icons.password, 
                controller: cPword,
                obsecureText: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: true, 
                      onChanged: (value){
                        setState(() {
                          value = !value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.orange.withOpacity(.32);
                        }
                        return Colors.white;
                      }),
                      checkColor: Colors.blue,
                    ),
                    SizedBox(width: width * 0.05),
                    const Text(
                      "I have read and accepted the terms of software use",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.1),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                ),
                child: GestureDetector(
                  onTap: (){
                    if(formKey.currentState!.validate()){

                    }
                  },
                  child: textButtonTwo(
                    "Sign Up", 
                    width,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, "/login");
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
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
    );
  }
}