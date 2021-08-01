import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<PageViewModel> getPages(){
    return[
      PageViewModel(
        image: Image.network("https://freeillustrations.xyz/wp-content/uploads/elementor/thumbs/Meeting-Illustrations@4x-p4dbydmle3a2ztizsyvdxe8kyhthgn9e550epoatls.png"),
        title: 'Learn Coding.',
        body: 'Learn with Shehzaan',
        footer: Text("@shehzaanmansuri"),
      ),
      PageViewModel(
        image: Image.network("https://media.istockphoto.com/vectors/flat-young-man-controls-time-and-project-management-vector-id1153689262?k=6&m=1153689262&s=612x612&w=0&h=dUFR-r59WiQUzehBIRwlqH603DcJDRRelQxiGwKPjCw="),
        title: 'Flutter',
        body: 'Learn Flutter',
        footer: Text("@Flutter"),
      ),
      PageViewModel(

        image: Image.network("https://www.pngitem.com/pimgs/m/145-1453266_presentation-illustrations-hd-png-download.png"),
        title: 'Learn C.',
        body: 'Learn C Language',
        footer: Text("@C Language"),
      ),
      PageViewModel(
        image: Image.network("https://png.pngtree.com/png-vector/20200310/ourmid/pngtree-online-education-training-course-design-concept-vector-illustration-png-image_2158408.jpg"),

        title: 'Learn HTML.',
        body: 'Learn HTML',
        footer: Text("@HTML"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroductionScreen(
          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {
            // When done button is press
          },
          pages: getPages(),
          showNextButton: true,
          next: Text("Next"),
          showSkipButton: true,
          skip: const Text("Skip"),
        ),
      ),
    );
  }
}
