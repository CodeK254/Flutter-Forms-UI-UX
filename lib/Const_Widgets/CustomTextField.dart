import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  IconData icon;
  String? hintText;
  bool? obsecureText;
  TextEditingController controller = TextEditingController();
  CustomTextField({super.key, required this.label, required this.icon, this.hintText, required this.controller, this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.purple.shade100,
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade100,
              Colors.blue.shade200,
              Colors.purple.shade300,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.purple,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 8,
          ),
          child: TextFormField(
            validator: (value){
              return value!.isEmpty ? "Input field cannot be blank" : null;
            },
            controller: controller,
            obscureText: obsecureText ?? false,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.blue.shade900,
                size: 20,
              ),
              label: Text(
                label,
                style: TextStyle(
                  color: Colors.blue.shade900,
                ),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}