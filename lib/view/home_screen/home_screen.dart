import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

       floatingActionButton: FloatingActionButton(
        
        backgroundColor:Colors.blue ,
        onPressed: () {
        Custom_buttomsheet(context);
          
          
        },
       
       
         ),
         body:Container(),

    );
  }

  Future<dynamic> Custom_buttomsheet(BuildContext context) { 
    TextEditingController namecontroller=TextEditingController();
    TextEditingController descontroller=TextEditingController();
    return showModalBottomSheet(context: context,
     builder: (context) => Column(
      children: [
        TextFormField(
          controller:namecontroller ,
          
        ),
        SizedBox(height: 10),
        TextFormField(
          controller:descontroller ,
          
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70)),
                onPressed: () {
                
              }, child: Text("cancel")),
            ),
            SizedBox(width: 10),
             Expanded(
               child: ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white70)),
                onPressed: () {
                
                           }, child: Text("save")),
             ),

          ],
        )
        

      ],

     ));
    
    }

}
 