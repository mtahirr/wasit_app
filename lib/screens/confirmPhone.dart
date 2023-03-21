import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/HomePage.dart';
import 'package:wasit_bussiness_app/widgets/arrowButton.dart';

import '../constants/colors.dart';
import '../widgets/bottomNavi.dart';
import '../widgets/button.dart';
import '../widgets/otpInput.dart';

class OTP extends StatefulWidget {
  @override
  State<OTP> createState() => _LoginPageState();
}

class _LoginPageState extends State<OTP> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ArrowButton(
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/Phone.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OtpInput(_fieldOne, true),
                      ),
                      Expanded(
                        child: OtpInput(_fieldTwo, false),
                      ),
                      Expanded(
                        child: OtpInput(_fieldThree, false),
                      ),
                      Expanded(child: OtpInput(_fieldFour, false)),
                      Expanded(child: OtpInput(_fieldFive, false)),
                      Expanded(child: OtpInput(_fieldSix, false)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '60 ثانية',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: BC.appColor),
                      ),
                      Text(
                        'يرجي ادخال رمز التحقق المرسل الي هاتفك',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyButton(
                    name: 'التالي',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigationExample(),
                          ));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      _showDialog();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: BC.appColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'إعادة ارسال الرمز',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: BC.appColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            content: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('تم تأكيد الدخول'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'وسيط ',
                        style: TextStyle(color: BC.appColor),
                      ),
                      Text('مرحباً بك في تطبيق'),
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
