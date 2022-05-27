// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_mgt/screens/Home%20Screen/home_controller.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final homeController=Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
        leading: IconButton(
          onPressed: (){
            print(homeController.count);
            homeController.increment();
            Get.back();
          }, 
          icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}