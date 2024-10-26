import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatelessWidget{
 const CurrencyConverterPage({super.key});
 @override
 Widget build(BuildContext context ){
  const border =  OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                borderSide: BorderSide(color:Color.fromARGB(122, 132, 142, 145),
                width: 2.0,
                style:BorderStyle.solid, 
                strokeAlign:BorderSide.strokeAlignOutside
              ));
  return  Scaffold(
    backgroundColor:Colors.white,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text(
         '\$ 0',
         style:TextStyle(
           fontSize:23,
         ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          
          
          child: TextField(
            decoration:InputDecoration(
                hintText:"Hey",
                hintStyle: TextStyle(color:Color.fromARGB(225,211,178,198)),
              prefixIcon: Icon(
                Icons.monetization_on,
              ),
              filled:true,
              fillColor: Color.fromARGB(122, 132, 142, 146),
              focusedBorder:border,
              enabledBorder: border,
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),),
        TextButton(
          onPressed:(){
            debugPrint('pressed');
          },
          style:const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(122, 132, 142, 142)),
            foregroundColor: WidgetStatePropertyAll(Color.fromARGB(122, 132, 142, 142)),
           
          ),
          child:const Text(
            'converter',
            style:TextStyle(color:Colors.pink),
          )
        )
      ],
    ),

  );
 }
}