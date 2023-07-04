import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('instagram', color: Colors.black),
              Image.asset('twitter', color: Colors.black),
              Image.asset('facebook', color: Colors.black)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Privacy Plolicy'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Terms'),
              )
            ],
          ),const Text('2023 Copyright'),
        ],
      ),
    );
  }
}
