import 'package:flutter/material.dart';

class WaneScreen extends StatefulWidget {
  static const id = "/wane_screen";

  const WaneScreen({Key? key}) : super(key: key);

  @override
  State<WaneScreen> createState() => _WaneScreenState();
}

class _WaneScreenState extends State<WaneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const Icon(
              Icons.navigate_before,
              size: 37,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(23),
            padding: EdgeInsets.only(left: 10),
              child: const Text(
                'Add Recipients',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Transform.translate(
            offset: const Offset(-11, 2),
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: const Offset(31, -25),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
           Padding(padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              label: const Text("Name"),
              labelStyle: const TextStyle(
                color: Colors.black,
              )
            ),
          ),),
          Padding(padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  label: const Text("Relationship"),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                  )
              ),
            ),),
          Padding(padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img_1.png'),
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                label: const Text('Phone Number'),
                labelStyle: const TextStyle(color: Colors.black),
              ),
             ),
          ),
          const SizedBox(height: 140,)
        ]),
      ),
        floatingActionButton: GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 40,bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue
            ),
            child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 24),),
          ),
        ),
    );
  }
}
