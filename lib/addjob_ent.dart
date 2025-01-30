import 'package:flutter/material.dart';
import 'login.dart';
import 'service/api.dart';

class addjob_ent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => addjob_entstate();
}

class addjob_entstate extends State<addjob_ent> {
  final _textjobname = TextEditingController();
  final _textjobdetail = TextEditingController();
  //var _texts = TextEditingController();
  String _a = '';
  String _b = '';

  bool mounted = true;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        titleSpacing: 0, //ชิดขอบซ้าย
        backgroundColor: Color.fromARGB(221, 217, 217, 217),
        title: Column(
          children: [
            tabbar(context),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            SizedBox(height: 100, width: 200),
            field_jobname(context),
            SizedBox(height: 40),
            SizedBox(height: 100, width: 200),
            field_jobdetail(context),
            SizedBox(width: 30),
            b_addjob(),
            Text(_a),
            Text(_b)
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 217, 217, 217));

  //Tab
  Widget tabbar(BuildContext context) => Container(
      height: 80,
      width: 1900,
      color: const Color.fromARGB(221, 255, 255, 255),
      child: Row(children: [
        b_logo(),
        //Container(
        //    height: 80, width: 1000, color: Color.fromARGB(221, 255, 255, 255)),
        Spacer(),
        Spacer(),
        Expanded(
            child: Row(
          children: [
            b_tip(),
            SizedBox(width: 10),
            b_profile(),
            SizedBox(width: 10),
            b_notify(),
            Spacer(),
            b_login(context),
            Spacer()
          ],
        ))
      ]));

  //Logo Button
  Widget textlogo() =>
      Text('สูงวัยใจเก๋า', style: TextStyle(color: Colors.deepOrange));
  Widget b_logo() => TextButton(onPressed: () {}, child: textlogo());

  //job Button
  Widget text_tip() => Text('ค้นหางาน',
      style: TextStyle(color: const Color.fromARGB(255, 2, 0, 0)));
  Widget b_tip() => TextButton(onPressed: () {}, child: text_tip());

  //Profile Button
  Widget text_profile() => Text('ข้อมูลส่วนตัว',
      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)));
  Widget b_profile() => TextButton(onPressed: () {}, child: text_profile());

  //Notify Button
  Widget text_notify() => Text('แจ้งเตือน',
      style: TextStyle(color: const Color.fromARGB(255, 10, 0, 0)));
  Widget b_notify() => TextButton(onPressed: () {}, child: text_notify());

  //Login Button
  Widget text_login() => Text('เข้าสู่ระบบ',
      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)));
  Widget b_login(BuildContext context) => ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => login())),
      child: text_login(),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)));

  Widget field_jobname(BuildContext context) => TextField(
        controller: _textjobname,
        decoration: InputDecoration(
            filled: true, fillColor: Colors.white, hintText: "Job Name"),
        keyboardType: TextInputType.text,
        //onSubmitted: (text) {String input = text;print(text);}
        //onChanged: (text) => updateText(),
      );

  Widget field_jobdetail(BuildContext context) => TextField(
        controller: _textjobdetail,
        decoration: InputDecoration(
            filled: true, fillColor: Colors.white, hintText: "Job Detail"),
        keyboardType: TextInputType.text,
        //onSubmitted: (text) {String input = text;print(text);}
        //onChanged: (text) => updateText(),
      );

  void updateText() => setState(() {
        _a = '${_textjobname.text}';
        _b = '${_textjobdetail.text}';
      });

  Widget text_addjob() => Text('เพิ่มงาน',
      style: TextStyle(color: const Color.fromARGB(255, 10, 0, 0)));
  Widget b_addjob() => ElevatedButton(
      onPressed: () {
        var data = {
          "jobname": _textjobname.text,
          "jobdetail": _textjobdetail.text,
        };

        Api.addjob(data);
      },
      child: text_addjob());
}
