import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Assignment 1'),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) =>item(my_list[index]) ,itemCount: my_list.length
        ),
      ),
    );
  }

  List<Color> my_list =[Colors.cyan,Colors.teal,Colors.red,Colors.green,Colors.blue,
  Colors.pink,Colors.purple,Colors.orange,Colors.brown,Colors.yellow];


  Widget item(Color){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Color),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Top Left',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 25),),
              ),
            ),
             Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('center',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 25),),
              ),
            ),
             Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Bottom Right',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 25),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
