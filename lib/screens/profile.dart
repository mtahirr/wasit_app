import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';
import 'package:wasit_bussiness_app/widgets/textFormfield.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'الملف الشخصي',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArrowButton()
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: BC.appColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: BC.appColor)),
              child: Column(
                children: [
                  Row(
                    children: [Image.asset('assets/Edit.png'), Text('تعديل')],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'الأسم',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'المدينة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'البريد الألكتروني(اختياري)',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
