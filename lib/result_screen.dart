import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
 double   result  ;
 int  age ;
 bool  isMale ;
 double weight;
 double height;
 ResultScreen({
   required this.age ,
   required this.result,
   required this.isMale,
   required this.height ,
   required this.weight
} ) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.7) ,
      appBar: AppBar(
          title: const Text('Result'), backgroundColor: Colors.black),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
           children:  [
            Text(
                isMale? 'Gender: Male': 'Gender: Female',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30 ,
                color: Colors.white,
                letterSpacing: 2

              ),

            ),
            Text( 'Bmi Result: ${result.round()} ',     style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30 ,
                color: Colors.white,
                letterSpacing: 2

            )  ) ,
            Text( 'Age: $age',style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30 ,
                color: Colors.white,
                letterSpacing: 2

            ),),
            Text( 'Weight: ${weight.toInt()}',  style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30 ,
                color: Colors.white,
                letterSpacing: 2

            ),),
            Text( 'Height: ${height.toInt()}',  style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30 ,
                color: Colors.white,
                letterSpacing: 2

            ),),
          ],
        ),
      ),
    ) ;
  }
}
