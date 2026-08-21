import 'package:flutter/material.dart';
import 'package:getx/view/controller/counter_controller.dart';
import 'package:get/get.dart';
class Ex4 extends StatefulWidget {
  const Ex4 ({super.key});

  @override
  State<Ex4> createState() => _State();
}

class _State extends State<Ex4> {
  controller  con = Get.put(controller());
  List<String> FruitesName = [
    'orange' ,
    'Banana',
    'Apple,'
  ];
  List<String> temp = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 4'),
        centerTitle: true ,
      ),
      body: ListView.builder(
          itemCount: con.FruitsName.length,
          itemBuilder: (context,index){
            SizedBox(height: MediaQuery.of(context).size.height*.4,);
        return Card(
          child:Obx(()=>ListTile(
            onTap: (){
              if(con.temp.contains(con.FruitsName[index].toString())){
                con.temp.remove(con.FruitsName[index].toString());
              }else{
                con.temp.add(con.FruitsName[index].toString());
              }

            },
            title: Text(con.FruitsName[index].toString()),
            leading: Icon(Icons.favorite,color: con.temp.contains(con.FruitsName[index].toString())?Colors.red:Colors.white),
          ))

          // ListTile(
          //   onTap: (){
          //     if(temp.contains(FruitesName[index].toString())){
          //       temp.remove(FruitesName[index].toString());
          //     }else{
          //       temp.add(FruitesName[index].toString());
          //     }
          //     setState(() {
          //
          //     });
          //   },
          //   title:  Text(FruitesName[index],style: TextStyle(fontSize: 15)),
          //   leading: Icon(Icons.favorite,color: temp.contains(FruitesName[index].toString()) ? Colors.red :Colors.white),
          //
          // ),
        );
      }),
    );
  }
}
