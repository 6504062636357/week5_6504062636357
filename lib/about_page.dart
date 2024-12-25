import 'package:flutter/material.dart';

class  AboutPage extends StatelessWidget {
  const AboutPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cs app 2'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leading icon pressed');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              debugPrint('shopping cart icon pressed');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TextField for User Name
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 10),

              // TextField for Password
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(height: 20),

              // Container with Align for 'History:'
              Container(
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,  // เปลี่ยนเป็นตำแหน่งขวากลาง
                  child: Text(
                    'History:',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Corrected Image.network
              const Image(
                image: NetworkImage('https://static.vecteezy.com/system/resources/previews/010/870/328/non_2x/laptop-computer-or-notebook-with-blank-screen-png.png'),
              ),
              const SizedBox(height: 20),

              const Text('ขอบคุณที่ใช้บริการ'),
              const Text('เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ'),
              const Text('สรุปรายละเอียดการชาร์จ'),
              ElevatedButton(
                onPressed: () {
                  debugPrint('pressed button');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              // Row to display date and charging time
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // กระจาย widget ให้ห่างกันจนสุดขอบ
                children: [
                  Text(
                    'วันที่ชาร์จ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '9 กันยายน 2567',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'charging time',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '12:02 AM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              // Card with an image and text
              const Card(
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('245 THB'),
                      SizedBox(height: 10),
                      Image(
                        image: NetworkImage('https://t4.ftcdn.net/jpg/08/21/17/73/360_F_821177322_G50EsrhpLrJa8lWtN6ePc0ISRmBDL5l8.jpg'),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
    );
    ;
  }
}
