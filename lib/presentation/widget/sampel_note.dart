import 'package:flutter/material.dart';

class SampelNote extends StatefulWidget {
  String noteName;
  String noteDetails;
  String timeAddNote;
  SampelNote({
    super.key,
    required this.noteName,
    required this.noteDetails,
    required this.timeAddNote,
  });

  @override
  State<SampelNote> createState() => _SampelNoteState();
}

class _SampelNoteState extends State<SampelNote> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 80,
          decoration: BoxDecoration(
            color: Color.fromRGBO(242, 214, 241, 0.08),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.noteName, style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      widget.noteDetails,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(width: 30),
                    Text(
                      widget.timeAddNote,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 9),
      ],
    );
  }
}
