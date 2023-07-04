import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InstagramCard extends StatelessWidget {
  final String username;

  const InstagramCard({
    Key? key,
    required this.username,
  }) : super(key: key);

  void _launchInstagramURL() async {
    final url = 'https://www.instagram.com/$username/';
    final uri = Uri(
      scheme: 'https',
      host: 'www.instagram.com',
      path: '$username/',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchInstagramURL,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: const [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 16),
              Text(
                'Visit Instagram',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
