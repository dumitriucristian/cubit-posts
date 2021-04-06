import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_service.dart';
import 'post.dart';

class PostCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

    PostCubit(): super([]);
   void getPosts() async => emit(await _dataService.getData());
}