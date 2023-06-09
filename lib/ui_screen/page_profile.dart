import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({super.key});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            // tombol back
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.deepOrange,
          ),
        ),
        title: Text(
          'My Profile',
          style:
              TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'images/profile.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Luthfi Thufail Asiddiqi',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'luthfiqi.edu@gmail.com',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lokasi'),
                          Icon(Icons.arrow_forward_ios, size: 30),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Divider(
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Order'),
                          Icon(Icons.arrow_forward_ios, size: 30)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Keluar'),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
