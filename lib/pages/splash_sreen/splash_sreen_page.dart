import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_sreen_controller.dart';

class SplashSreenPage extends GetView<SplashSreenController> {
    
    const SplashSreenPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('SplashSreenPage'),),
            body: Container(),
        );
    }
}