import 'package:flutter/material.dart';
import 'package:getx/view/controller/counter_controller.dart';
import 'package:get/get.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  controller con = Get.put(controller());
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: con.email.value,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
                border: UnderlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: con.password.value,
              decoration: InputDecoration(
                prefixIcon: IconButton(onPressed: (){
                  setState(() {
                    loading!=loading;
                  });
                }, icon: loading?  Icon(Icons.remove_red_eye_outlined):Icon(Icons.remove_red_eye)),
                  hintText: 'Password',
                  border: UnderlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                con.loginApi();
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(child: Text('Login',style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
