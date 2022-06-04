import 'package:flutter/material.dart';
import 'package:stacko/widgets/college_card.dart';

class College extends StatelessWidget {
  const College({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CollegeCard(
            image: 'images/ampi1.jpg',
            image1: 'images/ampi1.jpg',
            image2: 'images/ampi2.jpg',
            Heading: 'Amphi Theatre',
            Decription:
                'The evergreen place to be whether you are tired or excited. The Amphi Theatre is your place to chill.\n\n We have Cultura weekly on Saturdays where people come to perform and showcase their talents or just relax!',
            latitude: 12.90808204290217,
            longitude: 77.56617888558608,
          ),
          CollegeCard(
            image: 'images/banyan01.jpg',
            image1: 'images/banyan01.jpg',
            image2: 'images/banyan01.jpg',
            Heading: 'Banyan Tree',
            Decription:
                'Escape from the heat ,relax and unwind in the cool breeze under the roots of this majestic tree.',
            latitude: 12.908977217865935,
            longitude: 77.56682793171748,
          ),
          CollegeCard(
            image: 'images/heritage01.jpg',
            image1: 'images/heritage01.jpg',
            image2: 'images/heritage02.jpg',
            Heading: 'Heritage Building',
            Decription:
                'The evergreen place to be whether you are tired or excited. The Amphi Theatre is your place to chill.\n\n We have Cultura weekly on Saturdays where people come to perform and showcase their talents or just relax!',
            latitude: 12.90875592349545,
            longitude: 77.56664791070274,
          ),
          CollegeCard(
            image: 'images/ampi1.jpg',
            image1: 'images/ampi1.jpg',
            image2: 'images/ampi2.jpg',
            Heading: 'Rock Garden',
            Decription:
                'The evergreen place to be whether you are tired or excited. The Amphi Theatre is your place to chill.\n\n We have Cultura weekly on Saturdays where people come to perform and showcase their talents or just relax!',
            latitude: 12.907509852369987,
            longitude: 77.56656295742727,
          ),
          CollegeCard(
            image: 'images/ampi1.jpg',
            image1: 'images/ampi1.jpg',
            image2: 'images/ampi2.jpg',
            Heading: 'Amphi Theatre',
            Decription:
                'The evergreen place to be whether you are tired or excited. The Amphi Theatre is your place to chill.\n\n We have Cultura weekly on Saturdays where people come to perform and showcase their talents or just relax!',
            latitude: 12.90808204290217,
            longitude: 77.56617888558608,
          ),
        ],
      )),
    );
  }
}
