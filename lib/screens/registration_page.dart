import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  bool isPassIsVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.addListener(() {
      setState(() {});
    });
    _emailController.addListener(() {
      setState(() {});
    });

    _phoneController.addListener(() {
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
                  controller: _nameController,
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Type Your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    suffixIcon: _nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            padding: EdgeInsets.only(right: 14),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.close),
                            onPressed: () => _nameController.clear(),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _phoneController,
                  autocorrect: true,
                  maxLength: 11,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    hintText: 'Type Your Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    suffixIcon: _phoneController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            padding: EdgeInsets.only(right: 14),
                            alignment: Alignment.centerRight,
                            icon: Icon(Icons.close),
                            onPressed: () => _phoneController.clear(),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
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
                height: 10.0,
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
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
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
