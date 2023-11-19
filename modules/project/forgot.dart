import 'package:first_apps/modules/project/Verification.dart';
import 'package:first_apps/modules/project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});
  @override
  State<Forgot> createState() => _Logo1State();
}

class _Logo1State extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF45A4FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF45A4FF),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              SvgPicture.asset('assets/images/Sign Up form (1).svg'),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(50.0),
                      topEnd: Radius.circular(50.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            'Please enter your email so we can',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'send you a verification code',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email:',
                              hintText: '@example.com',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                              suffixIcon: Icon(Icons.email_outlined),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 170.0,
                          ),
                          Container(
                            color: Colors.blue[400],
                            width: double.infinity,
                            height: 42.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>Verification(),
                                  ),
                                );
                              },
                              child: Text(
                                'Send reset code',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 42.0,
                            color: Colors.white,
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>Login(),
                                  ),
                                );
                              },
                              child: Text(
                                'Back to Login ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue,
                                  fontSize: 20.0,
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
        ),
      ),
    );
  }
}
