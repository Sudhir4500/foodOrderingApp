import 'package:flutter/material.dart';
import 'package:frontend/components/my_drawer.dart';

class homepage extends StatefulWidget{
  const homepage({super.key});
  @override
  State<homepage> createState()=>_homepageState();
}

class _homepageState extends State<homepage>{
  
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer:MyDrawer(),
    );
  }
}