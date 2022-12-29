

import 'package:flutter/material.dart';
import 'package:voiceandbiediocall/page/viediocallpage.dart';


class Callpage extends StatefulWidget {
  const Callpage({super.key});

  @override
  State<Callpage> createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  @override
  Widget build(BuildContext context) {
    final callid=TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Call Page"),centerTitle: true,),
      body: Column(
        
        children: [
          Container(
            margin: const EdgeInsets.only(left: 50),
            height: 200,
            child: Image.asset("asset/viedio.jpg"),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: callid,
              
              decoration: const InputDecoration(hintText: "Enter your id",border: OutlineInputBorder(),),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ViedioCallpage(userid: callid.text.toString(),)));
            
          }), child: Text("Join"))


        ],
      ),
    );
  }
}