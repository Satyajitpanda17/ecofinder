import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecofinder/consts/consts.dart';

//import 'package:ca';
class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImagesliderState();
}

class _ImagesliderState extends State<ImageSlider> {
  List<String> imageList = [
    "slide1",
    "slide1",
    "slide1",
    "slide1",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
            items: imageList
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            e,
                            height: 200,
                            width: 100,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              height: 150,
            ))
      ],
    );
  }
}
