import 'package:flutter/material.dart';

import '../../../widgets/blog_post_exerpts.dart';
import '../../../widgets/instagram_card.dart';

class LatestBlogPosts extends StatelessWidget {
  const LatestBlogPosts({
    Key? key,
  }) : super(key: key);

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
            "Latest Blog",
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
        const BlogPost(
          title: 'Our Search For a Venture Capitalist',
          description:
              'Once upon a time in a bustling city filled with dreams and ambitions, there lived a passionate entrepreneur named Sarah. Sarah spent countless hours pouring her heart and soul into a startup—an innovative tech company that revolutionized the way people interact with technology. However, ......',
  ),
        const InstagramCard(username: '@username'),
        const BlogPost(
          title: 'Broccoli Bacon Salad',
          description:
              'This easy chicken bacon casserole is a quick one-skillet dinner fix. Guaranteed crowd pleaser.',
        ),
      ],
    );
  }
}
