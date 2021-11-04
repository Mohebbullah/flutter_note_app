import 'package:flutter/material.dart';
import 'package:flutter_note_app/model/note.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Note List"),
      ),
      body:ListView.builder(itemBuilder: (context,index){
       return ListTile(
          title:Text(Note.notes[index].title),
          subtitle:Text(Note.notes[index].description),
        );
      

      },
      itemCount: Note.notes.length,
    
      ),
    
    );
  }
}
