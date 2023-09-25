import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';


class TuneItem extends StatelessWidget{
  TuneModel c;
  TuneItem(this.c);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child:   GestureDetector(
        onTap: (){
c.play_sound();
        },
        child: Container(

          color: c.c,

          width: double.infinity,







        ),
      ),
    );
  }


}
class TuneModel {
  final Color c;
  final String  s;
  TuneModel({
    required this.c,
    required this.s,
});
  void play_sound(){
    final player=AudioPlayer();
    player.play(AssetSource(s));

  }

}