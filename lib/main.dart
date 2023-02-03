import 'package:binding/all_control_bindins.dart';
import 'package:binding/home.dart';
import 'package:binding/home_control_binding.dart';
import 'package:binding/my_control.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControlBinding(),
      title: 'Binding',
      getPages: [
        GetPage(
            name: '/home',
            page: () => const Home(),
            binding: HomeControlBinding())
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Binding'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'The value is ${Get.find<MyController>().count}',
                    style: const TextStyle(fontSize: 25),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: const Icon(Icons.add)),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const Home());
                  },
                  child: const Text('Home')),
            ],
          ),
        ),
      ),
    );
  }
}
