import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kudo_sim/components/toast.dart';
import 'package:kudo_sim/loginpages/resetpass_page.dart';
import 'package:kudo_sim/loginpages/welcomepage.dart';
import 'package:kudo_sim/storepages/homepage.dart';
import '../components/my_textfield.dart';
import '../routes/generated_routes.dart';

class SignUpPage extends StatefulWidget {
  final Function()? onTap;
  SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  ValueNotifier userCredential = ValueNotifier('');
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
       home: Scaffold(
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
                  Image.asset("assets/images/register 1.png"),
                  // welcome back, you've been missed!
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Create A\nNew Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Enjoy fast internet everywhere in the world",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ),

                  const SizedBox(height: 40),

                  // username textfield
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Full Name',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Email',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: InkWell(
                        onTap: () {
                          showToast(message: "Welcome to the app.");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
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
                              "Register",
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

                  const SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("I Already have an account? ",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage(onTap: (){}),));
                        },
                        child: Text("Login",style: TextStyle(
                          color: Colors.deepPurple,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    ],
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
                        InkWell(
                            onTap: ()  async {
                              showToast(message: "Login Successful");
                              userCredential.value = await signInWithGoogle();
                              if (userCredential.value != null){
                                print("******************");
                                print(userCredential.value.user!.email);
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
                              }
                            },
                            child: Image.asset("assets/images/google.png")),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset("assets/images/facebook.png"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<dynamic> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on Exception catch (e) {
    // TODO
    print('exception->$e');
  }
}

Future<bool> signOutFromGoogle() async {
  try {
    await FirebaseAuth.instance.signOut();
    return true;
  } on Exception catch (_) {
    return false;
  }
}