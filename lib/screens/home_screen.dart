import 'package:flutter/material.dart';
import 'package:flutter_application_school/config/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Good morning!'),
                      const SizedBox(height: 6),
                      Text(
                        'Mark Story',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3429/3429402.png',
                  height: 60.0,
                )
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 0,
              color: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Example are Coming Soon',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleLarge?.fontSize,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Take the test \n and check your level.',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monthly progress',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Text('see all'),
              ],
            ),
            const SizedBox(height: 20),
            // grid subject
            GridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              physics:
                  const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '3.4',
                            style: TextStyle(fontSize: 30.0),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Average score',
                            style: TextStyle(),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Maths',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3320/3320938.png',
                        width: 30,
                      ),
                    )
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
