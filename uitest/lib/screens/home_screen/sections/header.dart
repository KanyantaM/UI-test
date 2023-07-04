import 'package:flutter/material.dart';

import '../../../constants/home_page_images.dart';
import '../../../widgets/oblique_card.dart';

class HeaderLandingPage extends StatelessWidget {
  const HeaderLandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.zero,
        border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child:
                    Image.asset(
                    backgroundHeaderImage1,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
              ),
             const Align(
                alignment: Alignment(-1.0, 0.3),
                child: ObliqueCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


