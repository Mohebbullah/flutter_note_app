import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_note_app/model/note.dart';
import 'package:flutter_note_app/screen/create_note/create_note_screen.dart';
import 'package:flutter_note_app/screen/note_details/note_details_screen.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Note List"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(
                context,
                NoteDetails.routeName,
                arguments: Note.notes[index],
              );
            },
            title: Text(Note.notes[index].title),
            subtitle: Text(Note.notes[index].description),
          );
        },
        itemCount: Note.notes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, CreateNote.routeName);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
