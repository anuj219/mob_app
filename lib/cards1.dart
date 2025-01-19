import 'package:flutter/material.dart';

class Cards1 extends StatelessWidget {
  const Cards1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Screen(),
    );
  }
}

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards Example"),
        ),
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          InkWell(    // its used to detect taps   -> to make cards tappable to play respective video
            onTap: () {
              // navigation to video player
              print('Card tapped.');
            },
            child: Card(
                color: Colors.lightBlue[50], // Set background color of card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.blue, width: 1),
                ),
                elevation: 4, // shadow effect add karega
                child: SizedBox(
                    width: 350,
                    height: 450,
                    child: Padding(
                        padding: const EdgeInsets.all(16.0), // Adds padding inside the card
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.network(
                              'https://imgs.search.brave.com/FlIW1TP283PAE2mjz4ZcEpvfX3scOMnlILqB8BMqi0U/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzE4LzA0LzYz/LzM2MF9GXzcxODA0/NjM2NF9rWGtTWGJG/dVZHeHNBNXVxZFlj/S0Q5SllIMlVrTjVi/Ui5qcGc', // Example image URL
                              height: 300,
                              width: 300,
                              fit: BoxFit.cover, //// cover the entire space of the container, potentially cropping parts of the image if necessary.   // helps avoid stretching
                            ),
                            const SizedBox(height: 8),
                            const Text("This is a card"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    print("Clicked 1");
                                  },
                                  child: const Text("Btn 1"), ////const
                                ),
                                const SizedBox(
                                    width: 18), // just for space in between
                                ElevatedButton(
                                  onPressed: () {
                                    print("Clicked 2");
                                  },
                                  child: const Text("Btn 2"),
                                )
                              ],
                            ),
                          ],
                        )
                      )
                    )
                  )
                ), // card1 ends
          Card(
              elevation: 4, // Adds shadow for better visibility
              child: Padding(
                  padding: const EdgeInsets.all(
                      16.0), // Adds padding inside the card
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network(
                        'https://imgs.search.brave.com/dOacrsHdzMbbE5ymj3_MpzS2jcbj-Ui3p8MeO_-zR18/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxNy8w/Mi8wOC8xNy8yNC9m/YW50YXN5LTIwNDk1/NjdfNjQwLmpwZw',
                        height: 300,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      const Text("This is a card"),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("Clicked 1");
                            },
                            child: const Text("Btn 1"), ////const
                          ),
                          const SizedBox(width: 18),
                          ElevatedButton(
                            onPressed: () {
                              print("Clicked 2");
                            },
                            child: const Text("Btn 2"),
                          )
                        ],
                      )
                    ],
                  ))), //card2 ends here
        ])));
  }
}
