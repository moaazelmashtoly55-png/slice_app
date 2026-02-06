import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_continar_section.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_list_veiw_item.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_slider.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_text_align.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightgray,
        leading: Image.asset("assets/images/logo.png", width: 70, height: 90),
        title: Image.asset(
          "assets/images/splash slice.png",
          width: 100,
          height: 100,
        ),
        actions: [Icon(Icons.menu_rounded, size: 30)],
        
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body:
      SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                HomeSlider(),
                SizedBox(height: 20),
                HomeTextAlign(title: "- Explore the list 📋 "),
                SizedBox(height: 10),
                HomeContinarSection(),
                SizedBox(height: 20),
    
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 5,
                  radius: BorderRadius.circular(8),
                  color: AppColor.dark,
                ),
    
                SizedBox(height: 20),
                HomeTextAlign(title: "  -  Best Options 🎖 "),
                SizedBox(height: 10),
                HomeListVeiwItem(),
                SizedBox(height: 30),
                HomeTextAlign(title: "- Slice Inventions ❤🤫"),
                SizedBox(height: 10),
                HomeListVeiwItem(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
     
    );
  }
}
