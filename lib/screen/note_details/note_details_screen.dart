import 'package:flutter/material.dart';
import 'package:flutter_note_app/model/note.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({Key? key}) : super(key: key);
  static const routeName = "/notedetails";

  @override
  Widget build(BuildContext context) {
    Note note = ModalRoute.of(context)!.settings.arguments as Note;

    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        
        child: Text(note.description),),
    );
  }
}
