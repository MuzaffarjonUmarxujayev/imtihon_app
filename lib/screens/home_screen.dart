import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_app/screens/wone_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _wanePage() async{
    Navigator.pushNamed(context, WaneScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Text('Beneficiary',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  size: 30,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 25,
              ),
              Text(
                "Recipients",
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/img.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Jonibek",
                  ),
                  subtitle: const Text('2344566'),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.blue),
                      child: const Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _wanePage,
        child: const Icon(Icons.add,size: 50,color: Colors.white,),
      ),
    );
  }
}
