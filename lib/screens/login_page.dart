import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_field/screens/registration_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool isPassIsVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/bg.png'),fit: BoxFit.fill),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  autocorrect: true,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Type Your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    suffixIcon: _emailController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            padding: EdgeInsets.only(right: 14),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.close),
                            onPressed: () => _emailController.clear(),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passController,
                  maxLength: 8,
                  obscureText: isPassIsVisible,
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Type Your Password',
                    border: OutlineInputBorder(
                      gapPadding: 25.0,
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.only(right: 14),
                      alignment: Alignment.centerRight,
                      icon: IconButton(
                        icon: isPassIsVisible?Icon(
                          Icons.visibility_off,
                        ):Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isPassIsVisible = !isPassIsVisible;
                          });
                        },
                      ),
                      onPressed: () => _passController.clear(),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //fixedSize: Size(200, 50),
                  padding:
                      EdgeInsets.only(right: 35, left: 35, top: 12, bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      28.0,
                    ),
                  ),
                ),

                //style: ButtonStyle(fixedSize: ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an Account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegistrationPage(),
                        ),
                      );
                    },
                    child: Text('Click here'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
