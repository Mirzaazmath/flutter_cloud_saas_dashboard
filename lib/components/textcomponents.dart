
import 'package:flutter/material.dart';



class Heading2 extends StatelessWidget {
  String title;
  Heading2(this.title);


  @override
  Widget build(BuildContext context) {

    return Text(title,style:const  TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),);
  }
}
class Heading3 extends StatelessWidget {
  String title;
  Heading3(this.title);


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size.width;
    return Text(title,style:  TextStyle(color: Colors.black,fontSize:size<920?16: 20,fontWeight: FontWeight.bold),);
  }
}
class Heading4 extends StatelessWidget {
  String title;
  Heading4(this.title);


  @override
  Widget build(BuildContext context) {
    return Text(title,style:const  TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,);
  }
}
class Minigrey extends StatelessWidget {
  String title;
  Minigrey(this.title);


  @override
  Widget build(BuildContext context) {
    return Text(title,style:const  TextStyle(color: Colors.grey,),maxLines: 1,overflow: TextOverflow.ellipsis,);
  }
}
class Miniblue extends StatelessWidget {
  String title;
  Miniblue(this.title);


  @override
  Widget build(BuildContext context) {
    return Text(title,style:const  TextStyle(color: Color(0xff66cef6),fontWeight: FontWeight.bold,fontSize: 15),);
  }
}
