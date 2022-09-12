import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/helpers/my_print.dart';
import 'package:movies/data/model/movies_model.dart';
import 'package:movies/data/repo/movies_repo.dart';

import '../core/helpers/base_state.dart';

class MoviesCubit extends Cubit<BaseState> {
  MoviesCubit() : super(const InitState());

  MoviesModel moviesModel = MoviesModel();

  /// GET Movies
  void getMovies() async{
    emit(const LoadingState());
    try{
      moviesModel =  await MoviesRepo.categories();
      emit(const DoneState());
    } catch (e, s){
      MyPrint.errorPrint(s.toString());
      emit(ErrorState(msg: '$e'));
    }
  }
}
