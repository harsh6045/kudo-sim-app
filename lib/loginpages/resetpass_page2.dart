import 'package:flutter/material.dart';

import '../Utils/validator_helper.dart';
import '../components/my_textfield.dart';
class ResetPassWord2Page extends StatefulWidget {
  final Function()? onTap;
  ResetPassWord2Page({super.key, required this.onTap});

  @override
  State<ResetPassWord2Page> createState() => _ResetPassWord2PageState();
}

class _ResetPassWord2PageState extends State<ResetPassWord2Page> {
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/register_2.png"),
                // welcome back, you've been missed!
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Email\nForgot',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Text("Enter your phone number\nto request a email address ",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Phone',
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  validator: ValidationHelper.validatePhoneNumber,
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 40),
                  child: Text("Click send you will recieve verification code  instruction to your inbox ",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),

                const SizedBox(height: 20),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 25,top: 25),
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child:  Center(
                          child: Text(
                            "Send",
                            style: TextStyle(
                              fontFamily: "HappyMonkey",
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Image.asset("assets/images/google.png"),

                    ],
                  ),
                ),

                const SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
