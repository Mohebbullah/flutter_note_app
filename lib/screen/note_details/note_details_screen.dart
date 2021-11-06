import 'package:flutter/material.dart';
import 'package:flutter_note_app/model/note.dart';
import 'package:flutter_note_app/screen/note/note_screen.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({Key? key}) : super(key: key);
  static const routeName = "/notedetails";

  @override
  Widget build(BuildContext context) {
    Note note = ModalRoute.of(context)!.settings.arguments as Note;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(note.title),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Note.notes.remove(note);
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, NoteScreen.routeName);
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Text(note.description),
      ),
    );
  }
}
