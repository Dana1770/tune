import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/components.dart';

class Tune extends StatelessWidget{
  final player=AudioPlayer();
  final List<TuneModel>tuneColors=[
    TuneModel(c:const Color(0XFFEE2B3C) , s: 'note1.wav'),
    TuneModel(c:const Color(0xffF49431), s: 'note2.wav'),
    TuneModel(c: const Color(0xffFBF25E), s: 'note3.wav'),
    TuneModel(c: const Color(0xff3DC15B), s: 'note4.wav'),
    TuneModel(c: const Color(0xff0DA588),s: 'note5.wav'),
    TuneModel(c: const Color(0xff0EA0E9), s: 'note6.wav'),
    TuneModel(c: const Color(0xff9A10A8), s: 'note7.wav'),
  ];

  Tune({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
  appBar: AppBar(
    elevation: 0,
    backgroundColor: const Color(0XFF26313A),
    title: const Center(child: Text("Flutter Tune")),
  ),
  body: Column(
    children: tuneColors.map((e) => TuneItem(e)).toList(),
  ),
);
  }
/*
List<TuneItem>getTuneItems(){
    List<TuneItem>items=[];
    for(var i in tuneColors){
   items.add(TuneItem(i));
    }
    return items;
}
*/

}