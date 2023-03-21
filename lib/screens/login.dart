import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/confirmPhone.dart';
import 'package:wasit_bussiness_app/widgets/logo.dart';

import '../constants/colors.dart';
import '../widgets/button.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  TextEditingController pcontroller = TextEditingController();
  String countryCode = '966';
  validation() {
    if (pcontroller.text.isEmpty) {
    } else if (pcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("please enter your correct phoneNumber"),
          duration: Duration(milliseconds: 300),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/background.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            LogoConatiner(),

            SizedBox(
              height: 100,
            ),

            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: BC.appColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: BC.appColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '+ $countryCode',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextFormField(
                          controller: pcontroller,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.right,
                          validator: (val) {
                            if (val.isEmpty) {
                              return "Required";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'XX-XXX-XXXX',
                            contentPadding: EdgeInsets.only(top: 0),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  top: -10,
                  child: Container(
                      color: Colors.white,
                      child: Text(
                        'رقم الهاتف',
                        style: TextStyle(color: BC.appColor),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'شروط الأستخدام',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600,
                      color: BC.appColor),
                ),
                Text(
                  'بالضغط علي تسجيل الدخول فأنت توافق علي',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // MyButton(),
            MyButton(
              name: 'التالي',
              onPressed: () {
                pcontroller.value.text.isNotEmpty;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTP(),
                    ));
              },
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: BC.appColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'فيديو تعريفي للتطبيق',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: BC.appColor),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
