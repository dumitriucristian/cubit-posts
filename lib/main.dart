import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'posts_view.dart';
import 'post_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: BlocProvider<PostCubit> (
          create: (context) => PostCubit()..getPosts(),
          child: PostsView()
      ),
    );
  }
}
