import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 100;
  int age  = 18 ;
  int weight = 50;
  bool  colorMale = false;
  bool colorFemale=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      appBar: AppBar(
          title: const Text('BMI Calculator'), backgroundColor: Colors.black),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 7, top: 10),
                    child: InkWell(
                      onTap: (){
                        colorFemale = true;
                        colorMale = false;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: colorFemale?Colors.red:Colors.black, width: 10),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Image(
                          image: AssetImage('assets/images/female.png'),
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 7, top: 10),
                    child: InkWell(
                      onTap: ( ) {
                        colorMale = true;
                        colorFemale = false;
                        setState(() {});
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: colorMale?Colors.red:Colors.black, width: 10),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Image(
                          image: AssetImage('assets/images/male.png'),
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$value',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slider(
                        value: value.toDouble(),
                        onChanged: (value) {
                          this.value = value.toInt();
                          setState(() {});
                        },
                        min: 100,
                        max: 200,
                        activeColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                         SizedBox(height: 5,),
                         Text(
                          '$weight',
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  weight--;
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {
                                  weight++;
                                  setState(() {    });
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                         const SizedBox(height: 5,),
                         Text(
                          '$age',
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  age--;
                                  setState(() {

                                  });
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.red))),
                  ),
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
