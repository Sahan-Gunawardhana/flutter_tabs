import 'package:flutter/material.dart';

void main() {
  runApp(const TabApp());
}
class TabApp extends StatelessWidget {
  const TabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon:Icon(Icons.yard_outlined)
              ),
              Tab(icon: Icon(Icons.airplane_ticket_outlined)
              ),
              Tab(icon: Icon(Icons.wb_sunny_outlined)
              ),
            ],
          ),
          title: Text("Gallery"),
        ),
        body: TabBarView(
            children: [
              ListView(
                children: [
                  Image.network("https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/5181794/pexels-photo-5181794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/13536318/pexels-photo-13536318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
                ],
              ),
              ListView(
                children: [
                  Image.network("https://images.pexels.com/photos/3073666/pexels-photo-3073666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/3073668/pexels-photo-3073668.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/9943672/pexels-photo-9943672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
                ],
              ),
              ListView(
                children: [
                  Image.network("https://images.pexels.com/photos/66997/pexels-photo-66997.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/16354140/pexels-photo-16354140/free-photo-of-a-sunset-on-the-beach-with-waves-and-clouds.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  Image.network("https://images.pexels.com/photos/16354158/pexels-photo-16354158/free-photo-of-a-sunset-over-the-ocean-with-a-mountain-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
                ],
              )
            ]),
      )),
    );
  }
}
