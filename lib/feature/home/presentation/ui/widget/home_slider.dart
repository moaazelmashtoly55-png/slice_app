  




  import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      
  options: CarouselOptions(height: 170.0,
  aspectRatio: 16/9,
  viewportFraction: 0.9,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 2),
  
  ),
  items: [1,2,3,4,5].map((i) {
    
    return Builder(
      
      
      builder: (BuildContext context) {
        return 
              
           Container(
            
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
               boxShadow: [BoxShadow(
                color: const Color.fromARGB(255, 23, 23, 23),blurRadius: 8,spreadRadius: 2,offset: Offset(4,10),
              )],
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover
                ,image: Image.network("https://tse4.mm.bing.net/th/id/OIP.SEfXqwWqK1NNMpH9ZmNrgwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3").image)
            ),
            
           );
        
      },
    );
  }).toList(),
);
  }
}