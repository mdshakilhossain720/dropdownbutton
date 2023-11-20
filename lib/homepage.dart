import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isopen=false;
  String selectoption='Select Option';

  List<String> Name=['shakil','Rayhan','Dhaka','Tangail','Bangladesh'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar'),),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                isopen=!isopen;
                setState(() {

                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectoption),
                      Icon(isopen? Icons.arrow_upward:Icons.arrow_downward),


                    ],
                  ),
                )
              ),
            ),
            if(isopen)
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: Name.map((e) => Container(
                  decoration: BoxDecoration(
                    color:selectoption ==e?Colors.pink: Colors.grey.shade400,
                  ),
                  child: InkWell(
                      onTap: (){
                        selectoption=e;
                        isopen=false;
                        setState(() {

                        });
                      },
                      child: Text(e)),
                )).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
