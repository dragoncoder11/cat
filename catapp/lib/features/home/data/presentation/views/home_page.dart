import 'package:catapp/features/home/data/presentation/views/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
static String id='home page';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomePageBody() ,
    );
  }
}