import 'package:flutter/material.dart';
import 'package:flutter_project/theme.dart';
import 'package:rive/rive.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool _isObscure = true;
  // bool isShowLoading = false;
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // late SMITrigger check;
  // late SMITrigger error;
  // late SMITrigger reset;
  // StateMachineController getRiveController(Artboard artboard) {
  //   StateMachineController? controller =
  //       StateMachineController.fromArtboard(artboard, "State Machine 1");
  //   artboard.addController(controller!);
  //   return controller;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email', false),
        buildInputForm('Password', true),
      ],

      // Positioned(
      //   child: RiveAnimation.asset(
      //     "assets/RiverAssets/check.riv",
      //     onInit: (artboard) {
      //       StateMachineController controller = getRiveController(artboard);
      //       check = controller.findSMI("Check") as SMITrigger;
      //       error = controller.findSMI("Error") as SMITrigger;
      //       reset = controller.findSMI("Reset") as SMITrigger;
      //     },
      //   ),
      // )
    );
  }

  Padding buildInputForm(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return "";
        //   }
        //   return null;
        // },
        // onSaved: (email) {},
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
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
    );
  }
}
