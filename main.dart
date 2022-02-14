import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 5),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {},
                  child: const Text('Click me'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {},
                  child: const Text('Click me'),
                ),
                const SizedBox(height: 15),
                OutlinedButton(
                  onPressed: () {
                    debugPrint('Received click');
                  },
                  child: const Text('Click Me'),
                ),
                const SizedBox(height: 18),
                IconButton(
                  icon: const Icon(Icons.volume_up),
                  tooltip: 'Listen',
                  onPressed: () {
                    debugPrint('Push me');
                  },
                  color: Colors.red,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    print('inkwell');
                  },
                  child:  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.red),
                    child: const Text('This is Inkwell Buttons'),
                  ),
                ),
                FloatingActionButton(
                    heroTag: 'uniqueTag',
                    onPressed: () {
                      debugPrint('Print');
                    }),
                    
              ],  
            ),
          ),
        ),
      ),
    );
  }
}
