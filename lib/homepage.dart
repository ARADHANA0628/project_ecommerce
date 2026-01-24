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
      {'image': 'assets/images/Top5.jpg', 'title': 'Stylish Top'},
      {'image': 'assets/images/Top6.jpg', 'title': 'Casual Wear'},
      {'image': 'assets/images/Top7.jpeg', 'title': 'Modern Style'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo2.png'),
          ),
        ),
        title: Text(
          'E-commerce',
          style: GoogleFonts.laila(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
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

            // ===== Categories =====
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    categoryItem(const Color(0xFFABC5C9), 'Categories', 'assets/images/Icon.png'),
                    categoryItem(const Color(0xFF822581), 'Men', 'assets/images/Men.png'),
                    categoryItem(Colors.black, 'Women', 'assets/images/Women.png'),
                    categoryItem(Colors.deepOrangeAccent, 'Kids', 'assets/images/Kids.png'),
                    categoryItem(const Color(0xFF0E968B), 'Western', 'assets/images/Western Wear.png'),
                    categoryItem(const Color(0xFF213BBC), 'Winter', 'assets/images/Winter Wear.png'),
                  ],
                ),
              ),
            ),

            // ===== Banner Image =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/Main.png', fit: BoxFit.cover),
              ),
            ),

            // ===== Deals Section =====
            sectionTitle('Deals Of The Day'),
            SizedBox(
              height: 420,
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: dealImages.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) => dealItem(dealImages[index]),
              ),
            ),

            // ===== Collection Section =====
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

  // ===== Category Widget =====
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
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 3)),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(title, style: GoogleFonts.laila(fontWeight: FontWeight.bold, fontSize: 12)),
        ],
      ),
    );
  }

  // ===== Section Title =====
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Text(
        title,
        style: GoogleFonts.laila(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // ===== Deal Item =====
  Widget dealItem(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }

  // ===== Collection Item =====
  Widget collectionItem(String image, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3))],
              image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
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
