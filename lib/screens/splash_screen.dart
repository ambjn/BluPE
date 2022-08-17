import 'package:blupe/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 75, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "BluPE💰",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/splash_image.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  controller: nameController,
                  maxLines: 1,
                  cursorColor: Colors.blueGrey,
                  decoration: const InputDecoration(
                    isCollapsed: true,
                    isDense: true,
                    counterText: "",
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(fontSize: 18),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 180.0,
                height: 50.0,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => HomeScreen()),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo.shade500),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ));
  }
}
