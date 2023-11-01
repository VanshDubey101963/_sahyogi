import 'package:flutter/material.dart';

class InfoTabPage extends StatefulWidget {
  const InfoTabPage({super.key});

  @override
  State<InfoTabPage> createState() => _InfoTabPageState();
}

class _InfoTabPageState extends State<InfoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/backgroundimages/bluelogin.png'),
            fit: BoxFit.fill),
      ),
      alignment: Alignment.center,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Booking Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            const SizedBox(height: 80.0),
            Container(
              margin: const EdgeInsets.all(25.0),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('PNR number: 4156522916'),
                    Text('Train number/Name: Navajivan SF Exp'),
                    Text('Quota: Third-AC'),
                    Text('From: Warangal'),
                    Text('To: Ankleshwar'),
                    Text('Date of Journey: 11 november 23')
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '12656-NAVAJIVAN SF EXP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Warangal Junction'),
                      Text('19:45,WL'),
                      Text('Sat,11 nov|3E|GN'),
                    ],
                  ),
                  Icon(Icons.arrow_right_alt),
                  Column(
                    children: [
                      Text('Ahmedabad Junction'),
                      Text('18:00,ADI'),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 40,),

            Container(
              height: 200,
              padding: const  EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(25.0),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  const Text(
                    'Passenger Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                    ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 10,
                      children: const [
                        Text('sno.',
                        style: TextStyle(color: Color(0xff44CEC6)),
                        ),
                        Text('Current Status',
                        style: TextStyle(color: Color(0xff44CEC6))
                        ),
                        Text('Booking Status',
                        style: TextStyle(color: Color(0xff44CEC6))
                        ),
                        Text('Coach Position',
                        style: TextStyle(color: Color(0xff44CEC6))
                        ),
                        Text('1',
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('CNF',
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('CNF M2 73',
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                        )
                        ),
                        Text('   -',
                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold
                        )
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ]),
    ));
  }
}




