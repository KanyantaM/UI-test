import 'package:flutter/material.dart';


class Links extends StatelessWidget {
  const Links({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('About Foodyman'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Become an Affiliate'),
              ),
              TextButton(
                onPressed: () {
                  //TODO: add a careers page
                },
                child: const Text('Careers'),
              ),
              TextButton(
                onPressed: () {
                  //TODO; add the blog
                },
                child: const Text('Blog'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Recipes'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Get help'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Add your saloon'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Sign up to deliver'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset('logo'),
              Row(
                children: [
                  Image.asset('appstore'),
                  Image.asset('playstore'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
