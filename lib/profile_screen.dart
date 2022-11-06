import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  final ListNames = const [
    'Muhammad Ali',
    'Ahmad Ali',
    'Ali Jaber',
    'Umar Jaber',
    'Salah Ali'
  ];

  final ListDates = const [
    '12 jan 2021 , 8am - 10am',
    '12 jan 2021 , 8am - 10am',
    '12 jan 2021 , 8am - 10am',
    '12 jan 2021 , 8am - 10am',
    '12 jan 2021 , 8am - 10am'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.calendar_today,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.blue[50],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 22,
                color: Colors.indigo.shade400,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Doctor Peterson',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Appointments Request',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.watch_later,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '12 jan 2021 , 8am - 10am',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('images/person.jpg'),
                    ),
                    title: const Text('Louis'),
                    subtitle: const Text('patterson'),
                    trailing: const Icon(
                      Icons.error_outline,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: const StadiumBorder(
                            side: BorderSide(
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'ACCEPT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade500,
                          shape: const StadiumBorder(
                            side: BorderSide(
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'DECLINE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Next Appointments',
              style: TextStyle(
                fontSize: 14,
                color: Colors.indigo.shade400,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: ListNames.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Text('AA'),
                        radius: 20,
                      ),
                      title: Text(ListNames[index]),
                      subtitle: Text(ListDates[index]),
                      trailing: const Icon(
                        Icons.more_vert,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
