import 'package:flutter/material.dart';
import 'package:flutter_project/default_layout_page.dart';
import 'package:rive/rive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/theme.dart';
import 'package:flutter_project/widget/login_form.dart';
import 'package:flutter_project/widget/login_option.dart';
import 'package:flutter_project/widget/primary_button.dart';
import 'package:flutter_project/login_screens/signin_page.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;
  bool pass = true;
  bool isShowloading = false;
  bool isShowconfetti = false;
  //
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SMITrigger check;
  late SMITrigger error;
  late SMITrigger reset;
  late SMITrigger confetti;
  StateMachineController getRiveController(Artboard artboard) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, "State Machine 1");
    artboard.addController(controller!);
    return controller;
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins"),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'New to this app?',
                    style: TextStyle(fontSize: 18, fontFamily: ""),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: textButton.copyWith(
                        fontFamily: "Poppins",
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              }
                              return null;
                            },
                            onSaved: (email) {},
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: kTextFieldColor,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: kPrimaryColor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              }
                              return null;
                            },
                            onSaved: (password) {},
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                labelText: "Passwords",
                                labelStyle: TextStyle(
                                  color: kTextFieldColor,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor),
                                ),
                                suffixIcon: pass
                                    ? IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        },
                                        icon: _isObscure
                                            ? Icon(
                                                Icons.visibility_off,
                                                color: kTextFieldColor,
                                              )
                                            : Icon(
                                                Icons.visibility,
                                                color: kPrimaryColor,
                                              ),
                                      )
                                    : null),
                          ),
                        ),
                      ],
                    ),
                  ),
                  isShowloading
                      ? Positioned.fill(
                          child: Column(
                            children: [
                              Spacer(),
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: RiveAnimation.asset(
                                  "assets/RiverAssets/check.riv",
                                  onInit: (artboard) {
                                    StateMachineController controller =
                                        getRiveController(artboard);
                                    check = controller.findSMI("Check")
                                        as SMITrigger;
                                    error = controller.findSMI("Error")
                                        as SMITrigger;
                                    reset = controller.findSMI("Reset")
                                        as SMITrigger;
                                  },
                                ),
                              ),
                              Spacer(
                                flex: 2,
                              )
                            ],
                          ),
                        )
                      : SizedBox(),
                  isShowconfetti
                      ? CustomPositioned(
                          child: Transform.scale(
                          scale: 8,
                          child: RiveAnimation.asset(
                            "assets/RiverAssets/confetti.riv",
                            onInit: (artboard) {
                              StateMachineController controller =
                                  getRiveController(artboard);
                              confetti = controller.findSMI("Trigger explosion")
                                  as SMITrigger;
                            },
                          ),
                        ))
                      : SizedBox()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => ResetPasswordScreen()));
                // },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => HomePage()));
              //   },
              //   child: PrimaryButton(
              //     buttonText: 'Log In',
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 24),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isShowloading = true;
                      isShowconfetti = true;
                    });
                    Future.delayed(Duration(seconds: 1), () {
                      if (_formKey.currentState!.validate()) {
                        check.fire();
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            isShowloading = false;
                          });
                          setState(() {
                            isShowconfetti = true;
                          });
                          confetti.fire();
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Default()));
                          });
                        });
                      } else {
                        error.fire();
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            isShowloading = false;
                          });
                        });
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(double.infinity, 56),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                  ),
                  icon: const Icon(CupertinoIcons.arrow_right, color: bg1),
                  label: const Text("Sign in"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Or log in with:',
                style: subTitle.copyWith(
                    color: kBlackColor, fontFamily: "Poppins"),
              ),
              SizedBox(
                height: 20,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, required this.child, this.size = 100});

  final Widget child;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      // Let's make it small
      child: Column(
        children: [
          Spacer(),
          SizedBox(
            height: size,
            width: size,
            child: child,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
