import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var item = TextEditingController();
  List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.check_circle),
        title: const Text('Shopee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Item',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              controller: item,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        items.add(item.text);
                      });
                    },
                    child: const Text('IKABIL'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(items[index]),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete_forever)),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
