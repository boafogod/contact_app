import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'My Contact',
          style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/nature.jpg'),
              radius: 30,
            ),
          )
        ],
        bottom: PreferredSize(preferredSize: Size.fromHeight(90), child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5 ),
          child: TextField(decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'search by name or numbers',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),),
        ),),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Recent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/nature.jpg'),
              ),
              title: Text('Big Arsenal'),
              subtitle: Text('+233541019482'),
              trailing: Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }
}
