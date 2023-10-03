import 'package:app_note/Views/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notesitem extends StatelessWidget {
  const notesitem({super.key});

  @override
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
            color: Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: const Text(
                  'Build your career with marwan ragab',
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
              child: const Text(
                'may22,2022',
                style: TextStyle(color: Color.fromARGB(255, 110, 106, 106)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
