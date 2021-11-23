import 'package:flutter/material.dart';
class ContactView extends StatelessWidget {
  const ContactView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Contacts', 
        style: TextStyle(color: Colors.black),),
        actions: [Icon
        (Icons.more_vert, color: Colors.black,)
        ],
         
      ),
     
    );
  }
}