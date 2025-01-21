// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Cards1 extends StatelessWidget {
  const Cards1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // main column
        body: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Color.fromARGB(255, 10, 10, 10),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 40,
                      left: 0,
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                        ),
                      )),
                  Positioned(
                      top: 50,
                      left: 20,
                      child: Text(
                        "Data Whinners",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Wrap(				// Using Wrap instead of Row, to wrap the children to next line. as row does not support it
					spacing: 5,		// horizontal spacing between children
					runSpacing: 30, 	// vertical spacing between lines 	
					children: [
						// _Card is our Custom widget for creating flutter Cards with custom Image, title, description
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://imgs.search.brave.com/iETvXTTeChlNeeUUHuUICzN3esBjUBohotOr2xVmGVY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cHJlbWl1bWJlYXQu/Y29tL2Jsb2cvd3At/Y29udGVudC91cGxv/YWRzLzIwMTkvMTIv/dGh1bWJuYWlsLWNv/dmVyLmpwZz93PTg3/NSZoPTQ5MCZjcm9w/PTE",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
							),
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://imgs.search.brave.com/fmck9tRe8z-vCaPxNQNJrruVgQHi8dlSuFV3Wjbl7qM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9saWNr/ZC5jby93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMi8xMS9DYW52/YS1Zb3VUdWJlLVRo/dW1ibmFpbC1jcmVh/dG9yLmpwZWc",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
							),
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkYrUxfJntqXN9ZSp1Nj6Trfh7scBOvkHH2w&s",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
							),
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://imgs.search.brave.com/B4OMBqpifyDVeVKMEF094wUTbi8KtbMezEixEPD5MrY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9iNGsxNmM3/bHc1dXQvNFlWMEVW/T1F5R2JQQ0pzcmxh/c1ZaSS80NjA1Mjhl/Y2Q2YjhjNzdkYzhk/YzVjMmE4NzI5NWNm/My9CbG9nX18zMl8u/anBnP2ZtPXdlYnAm/dz0xMDgwJnE9NTA",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
						),
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://imgs.search.brave.com/umyCNuiHS5gJ95jWM8J6tRmHXDGGLHqq2w4YOoXT_Qs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9C/c0RvTFZNbm1acy9t/YXhyZXNkZWZhdWx0/LmpwZw",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
							),
						_Card(
							description: "Coding is life, and in life; you will die ...",
							imageUrl: "https://imgs.search.brave.com/34rTFAR2uBjuqzUmrv7GsLaZFpwQGvNOSnDaArnTWoI/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS83/d25vdmU3Sy1aUS9t/YXhyZXNkZWZhdWx0/LmpwZw",
							mainTitle: "How to Learn Coding in 2025",
							subTitle: "FreeCodeCampORG",
							),
                ],
              ),
			 	],		//column ar
      	)
	 );
  }
}


// making custom card class, that takes in input, so each card is dynamic
// to make code lines lesser
class _Card extends StatelessWidget{
	final String imageUrl;
	final String mainTitle;
	final String subTitle;
	final String description;

	// Constructor
	const _Card({
    Key? key,
    required this.imageUrl,
    required this.mainTitle,
    required this.subTitle,
    required this.description,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
		return Card(
			// CARD implementation
			elevation: 20,
			color: Colors.grey[600],
			child: Container(
				height: 181,
				width: 500,
				decoration: BoxDecoration(
					color: const Color.fromARGB(255, 255, 255, 255),
					borderRadius: BorderRadius.only(
						bottomRight: Radius.circular(50),
					)),
				child: Stack(
				children: [
					Positioned(
						left: 10,
						child: SizedBox(
							height: 150,
							width: 150,
							child: ClipRRect(
								// have to use this to give image a rounded border
								borderRadius: BorderRadius.only(
										bottomRight: Radius.circular(50)),
								child: Image.network(
									imageUrl,
									fit: BoxFit
										.cover, //// cover the entire space of the container, potentially cropping parts of the image if necessary.   // helps avoid stretching
								)),
						)),
					Positioned(
						top: 35,
						left: 170,
						child: Container(
							height: 170,
							width: 280,
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
								Text(
									mainTitle,
									style: TextStyle(
										fontSize: 20,
										color: Colors.blue[900],
										fontWeight: FontWeight.bold),
								),
								Text(
									subTitle,
									style: TextStyle(
										fontSize: 15, color: Colors.grey),
								),
								Divider(
									color: Colors.black,
								),
								Text(
									description,
									style: TextStyle(
										fontSize: 15, color: Colors.black87),
								),
								SizedBox(height: 15,),
								Row(
									mainAxisAlignment: MainAxisAlignment.end,
									children: [
									SizedBox(width: 30,),
									Container(
									child: ElevatedButton(
										style: ElevatedButton.styleFrom(
											backgroundColor: Colors.black45, // Set the background color
											foregroundColor: Colors.white, // Set the text color
										),
										onPressed: () {
											// Show Snackbar when button is clicked
											ScaffoldMessenger.of(context)
												.showSnackBar(
											SnackBar(
												content: const Text(
													'Redirecting to youtube.com'),
												action: SnackBarAction(
													label: 'cancel',
													onPressed: () {
													// Example: Undo action can be handled here
													print('cancel');
													},
												),
											),
											);
											print("Clicked btn");
										},
										child:
											const Text("visit"), ////const
									),
								)]),
								],
							),
						))
				],
				),
			),
		);
  }
}
