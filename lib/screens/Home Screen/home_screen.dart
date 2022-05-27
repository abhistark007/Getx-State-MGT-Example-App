// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mgt/screens/Detail%20Screen/detail_screen.dart';
import 'package:getx_state_mgt/screens/Home%20Screen/home_controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx State MGT"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Obx(()=> Text("${homeController.count}")),
            MaterialButton(
              onPressed: (){
                homeController.increment();
              },
              
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Increment"),
            ),
            MaterialButton(
              onPressed: (){
                Get.to(()=>DetailScreen());
              },
              
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Goto Detail Screen"),
            ),
          ],
        ),
      ),
    );
  }
}