import 'package:app_note/Views/widget/custmo_app_bar.dart';
import 'package:app_note/Views/widget/notes_list_view.dart';
import 'package:app_note/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class noteViewBody extends StatefulWidget {
  const noteViewBody({super.key});

  @override
  State<noteViewBody> createState() => _noteViewBodyState();
}

class _noteViewBodyState extends State<noteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchallNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(
            height: 25,
          ),
          customAppBar(
            text: 'Note',
            ico: Icons.search,
          ),
          Expanded(child: ListviewItem())
        ],
      ),
    );
  }
}
