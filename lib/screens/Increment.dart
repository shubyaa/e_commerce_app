import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  final int count;
  const Increment({super.key, required this.count});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int count1 = 1;
  @override
  void initState() {
    count1 = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              count1 = count1 - 1;
            });
          },
          child: const Icon(
            Icons.remove,
            size: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            count1.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              count1 = count1 + 1;
            });
          },
          child: const Icon(
            Icons.add,
            color: Color.fromRGBO(94, 94, 94, 1),
            size: 16,
          ),
        ),
      ],
    );
  }
}
