import 'package:flutter/material.dart';
import 'package:flutter_note_app/model/note.dart';
import 'package:flutter_note_app/screen/note/note_screen.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key}) : super(key: key);
  static const routeName = "createnote";

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create Note"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please Enter Validate Title";
                    } else {
                      return null;
                    }
                  },
                  controller: titleEditingController,
                  decoration: InputDecoration(labelText: "Title"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please Enter Validate Title";
                    } else {
                      return null;
                    }
                  },
                  controller: descriptionEditingController,
                  decoration: InputDecoration(labelText: "Description"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        String title = titleEditingController.text;
                        String description = descriptionEditingController.text;
                        print(title + " " + description);
                        Note note = Note(title, description);
                        Note.notes.add(note);
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(context, NoteScreen.routeName);
                      }
                    },
                    child: Text("Create Note"))
              ],
            )),
      ),
    );
  }
}
