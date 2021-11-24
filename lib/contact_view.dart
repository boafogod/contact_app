import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Contacts',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/nature.jpg'),
              radius: 70,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Audrey Kendra',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            const Center(
              child: Text(
                'Koforidua, Ghana',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                color: const Color(0xff9AADBE),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Mobile',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('+233541019482'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.chat,
                                color: Colors.black,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder()),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('boafogod1@gmail.com'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder()),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Group',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('Canada Group'),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Account Linked',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'telegram',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    trailing: Image.asset('assets/telegram.jpg'),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    title: Text(
                      'WhatsApp',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    trailing: Image.asset('WhatsApp-Symbol.png'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'More Options',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Share Contact', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                    ),


                  ), ListTile(
                    title: Text(
                      'QR Code',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                
                  ),
                ],
              ),
            ),
            
           
          ],
        ));
  }
}
