import 'package:flutter/material.dart';

import '../../../widgets/q_and_a_card.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
          child: Text(
            "Why choose us?",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        const QandA(
          number: '01',
          title: "Choose what you want",
          description: "Select items from your favourite saloons",
        ),
        const QandA(
          number: '02',
          title: "Place your order",
          description: "Add items to your cart and proceed to checkout",
        ),
        const QandA(
          number: '03',
          title: "Enjoy your meal",
          description:
              "Sit back, relax, and wait for your food to be delivered",
        ),
      ],
    );
  }
}
