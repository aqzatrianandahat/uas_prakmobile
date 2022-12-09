import 'package:flutter/material.dart';
import 'package:projek_uas/home.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    var email = "aqza";
    var pwd = "aqza12345";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 196, 196),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 15, bottom: 5),
              child: Image(image: AssetImage("assets/images/Logo Name.png")
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 15, bottom: 5),
              child: Image(image: AssetImage("assets/images/Logo.png"),
              alignment: Alignment.center,),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 8, bottom: 5, left: 10),
                child: Text("Email",
                    style:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
            ),
            TextField(
              controller: emailController,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins Light',
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                hintText: 'Email',

              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8, bottom: 5, left: 10),
              child: Text("Password",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: TextField(
                controller: pwdController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Password'),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
                child: Text("Forgot password?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 73, 79, 115)))),
            Expanded(child: Container()),
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text == email){
                          if (pwdController.text == pwd){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>
                                Home()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("Password Salah"),
                                )
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.red,
                                content: Text("Email Salah"),
                              )
                          );
                        }
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 73, 79, 115),
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                )),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? ",
                      style: TextStyle(fontSize: 12, color: Colors.black45)),
                  TextButton(onPressed: (){},
                    child: const Text("Sign Up",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 73, 79, 115))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}