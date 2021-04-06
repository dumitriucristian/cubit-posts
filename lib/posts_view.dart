import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_cubit.dart';
import 'post.dart';

class PostsView extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         title: Text('Posts'),
     ),
       body: BlocBuilder<PostCubit, List<Post>>(
         builder: (context, post){
           if(post.isEmpty) {
             return Center(
               child: CircularProgressIndicator(),
             );
           }

           return ListView.builder(
               itemCount: post.length,
               itemBuilder: (context, index)   {
             return  ListTile(
                title:Text(post[index].title),

             );
           });
         }
         ),
   );
  }
}