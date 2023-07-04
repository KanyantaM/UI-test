import 'package:flutter/material.dart';

class FAQCard extends StatefulWidget {
  final String question;
  final String answer;

  const FAQCard({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  FAQCardState createState() => FAQCardState();
}

class FAQCardState extends State<FAQCard> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: _toggleExpansion,
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.question,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                child: Text(
                  widget.answer,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class FAQList extends StatelessWidget {
  const FAQList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 1.0),
      ),
      child: Column(
        children: const [
          FAQCard(
            question: 'Question 1',
            answer: 'Answer 1',
          ),
          FAQCard(
            question: 'Question 2',
            answer: 'Answer 2',
          ),
          FAQCard(
            question: 'Question 3',
            answer: 'Answer 3',
          ),
        ],
      ),
    );
  }
}
