import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> images=[
"https://tse4.mm.bing.net/th/id/OIP.SEfXqwWqK1NNMpH9ZmNrgwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjYLsnoCLAtAeFzNN9fu3xfua44cF3-1np3g&s",
"https://www.news-medical.net/image-handler/picture/2018/4/shutterstock_1By_stockcreations.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSBCXDkqVFfLF_qXWfsCtBc_5YJsks_LpIdA&s",

];

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 170.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
      ),
      items: images.map((m) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 23, 23, 23),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(4, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(m).image,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}


