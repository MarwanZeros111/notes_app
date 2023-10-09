import 'package:app_note/Views/edit_note_view.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notesitem extends StatelessWidget {
  const notesitem({super.key, required this.note});

  @override
  final NoteModel note;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, bottom: 24, top: 25),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                      color: Color.fromARGB(255, 110, 106, 106), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 10, bottom: 10),
              child: Text(
                note.date,
                style: TextStyle(color: Color.fromARGB(255, 110, 106, 106)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
