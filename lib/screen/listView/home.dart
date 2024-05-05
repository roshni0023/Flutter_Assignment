
import 'dart:async';
import 'dart:math';

import 'package:assignmentflutter/screen/listView/plantHome.dart';
import 'package:flutter/material.dart';

import '../../model/plantModel.dart';
import '../../model/productmodel.dart';
import '../../utils/textThemes.dart';
import '../../widget/plantView.dart';

class HomePage extends StatelessWidget {
  get home => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Text("Water Today"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('${home[index].image}'),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          home[index].name!,
                          style: MyTextThemes.textHeading,
                        ),
                        Text(
                          home[index].stringdata!,
                          style: MyTextThemes.bodyTextStyle,
                        ),
                      ],
                    ),
                    const Icon(Icons.water_drop_outlined)
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context,index){
            if(index % 3 == 0){
              return Text('Fri, February 7',style: MyTextThemes.textHeading,);
            }else {
              return Container();
            }
          },
          itemCount: 5),
    );
  }
}

