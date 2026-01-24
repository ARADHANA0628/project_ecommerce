import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dealImages = [
      'assets/images/Top1.jpg',
      'assets/images/Top2.jpg',
      'assets/images/Top3.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo2.png'),
            // child: Icon(Icons.person)
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'E-commerce',
          style: GoogleFonts.laila(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search, size: 30, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
              top: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ss(
                    const Color.fromARGB(255, 171, 197, 201),
                    'Categories',
                    'assets/images/Icon.png',
                  ),
                  const SizedBox(width: 10),
                  ss(
                    const Color.fromARGB(255, 130, 37, 129),
                    'Men',
                    'assets/images/Men.png',
                  ),
                  const SizedBox(width: 10),
                  ss(Colors.black, 'Women', 'assets/images/Women.png'),
                  const SizedBox(width: 10),
                  ss(Colors.deepOrangeAccent, 'Kids', 'assets/images/Kids.png'),
                  const SizedBox(width: 10),
                  ss(
                    const Color.fromARGB(255, 14, 150, 139),
                    'Western Wear',
                    'assets/images/Western Wear.png',
                  ),
                  const SizedBox(width: 10),
                  ss(
                    const Color.fromARGB(255, 33, 59, 188),
                    'Winter Wear',
                    'assets/images/Winter Wear.png',
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/Main.png'),

          // Container(

          //   margin: const EdgeInsets.all(10),
          //   height: 350,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.blueGrey.shade100,
          //     // borderRadius: BorderRadius.circular(12),
          //   ),
          //   child:  Center(
          //     child: Column(

          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [

          // Text(
          //   'FOREVER 21',
          //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          // ),
          // Text('Big Fashion Festival'),
          // Text('70% - 80% Off')
          //       ],
          //     ),

          //   ),
          //  ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                'Deals Of The Day',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          
          SizedBox(
            height: 420,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dealImages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  
                  childAspectRatio: 212 / 200,
                ),
                itemBuilder: (context, index) {
                  final img = dealImages[index];
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ss(Color c, String t, String image) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: c,
            image: image.isNotEmpty
                ? DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
                : null,
          ),
        ),
        const SizedBox(height: 5),
        Text(t, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
