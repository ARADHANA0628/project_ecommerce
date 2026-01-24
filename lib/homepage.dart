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
      'assets/images/Top4.jpg',
    ];

    final collectionItems = [
      {'image': 'assets/images/Top1.jpg', 'title': 'Stylish Top'},
      {'image': 'assets/images/Top2.jpg', 'title': 'Casual Wear'},
      {'image': 'assets/images/Top3.jpg', 'title': 'Modern Style'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo2.png'),
          ),
        ),
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 🔹 Categories Section
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    categoryItem(const Color(0xFFABC5C9), 'Categories', 'assets/images/Icon.png'),
                    categoryItem(const Color(0xFF822581), 'Men', 'assets/images/Men.png'),
                    categoryItem(Colors.black, 'Women', 'assets/images/Women.png'),
                    categoryItem(Colors.deepOrangeAccent, 'Kids', 'assets/images/Kids.png'),
                    categoryItem(const Color(0xFF0E968B), 'Western ', 'assets/images/Western Wear.png'),
                    categoryItem(const Color(0xFF213BBC), 'Winter Wear', 'assets/images/Winter Wear.png'),
                  ],
                ),
              ),
            ),

            /// 🔹 Banner
            Image.asset('assets/images/Main.png'),

            /// 🔹 Deals of the Day Section
            sectionTitle('Deals Of The Day'),
            SizedBox(
              height: 420,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: dealImages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return dealItem(dealImages[index]);
                },
              ),
            ),

            /// 🔹 Collection Section
            sectionTitle('Collection'),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: collectionItems.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: collectionItem(item['image']!, item['title']!),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  /// 🔹 Reusable Category Item
  Widget categoryItem(Color color, String title, String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 5),
          Text(title, style: GoogleFonts.laila(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  /// 🔹 Section Title Widget
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Text(
        title,
        style: GoogleFonts.laila(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  /// 🔹 Deal Item Widget
  Widget dealItem(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }

  /// 🔹 Collection Item Widget (Image + Centered Text)
  Widget collectionItem(String image, String title) {
    return Column(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.laila(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
