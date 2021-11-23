import 'package:contact_application/contact_view.dart';
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
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Recent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            ),
ListView.separated(
  shrinkWrap: true,
  itemBuilder: (BuildContext context, int index){return 
 ListTile(
   onTap: (){
     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
       return ContactView();
     }));
   },
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/nature.jpg'),
              ),
              title: Text('Big Arsenal', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),),
              subtitle: Text('+233541019482'),
              trailing: Icon(Icons.more_horiz, size: 30,),
            );},
            separatorBuilder: (contex, index){
              return const Divider();
            },
            itemCount: 3,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('Contacts', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15 ) ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'A',
                textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15 ) ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index){
              return const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/nature.jpg'),
              ),
              title: Text('Big Arsenal', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),),
              subtitle: Text('+233541019482'),
              trailing: Icon(Icons.more_horiz, size: 30,),
            ); 
            }, separatorBuilder: (context, index){
              return SizedBox(height: 8,);
            }, itemCount: 2)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () {},
      backgroundColor: Colors.black,),
    );
  }
}
