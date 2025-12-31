import 'package:arch_team_power/features/favorite_screen/presentation/manger/post_favouitr_cubit/cubit/post_favourite_cubit_state.dart';
import 'package:bloc/bloc.dart';
import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/favorite_screen/data/models/post/post_favourite/post_favourite_respose.dart';
import 'package:arch_team_power/features/favorite_screen/domain/repo/favourite_repo.dart';
import 'package:dartz/dartz.dart';

class PostFavouriteCubit extends Cubit<PostFavouriteState> {
  final FavouriteRepoAbstract repo;

  PostFavouriteCubit(this.repo) : super(PostFavouriteInitial());

  void toggleFavourite(int placeId) async {
    emit(PostFavouriteLoading());
    final result = await repo.toggleFavourite(placeId: placeId);
    result.fold(
      (failure) => emit(PostFavouriteFailure(failure.message)),
      (response) =>
          emit(PostFavouriteSuccess(response)), // هنا لازم يكون عندك Data
    );
  }
}

// import 'package:arch_team_power/features/favorite_screen/data/models/favorite_model.dart/favourite_model.dart';
// import 'package:arch_team_power/features/favorite_screen/domain/repo/favourite_repo.dart';
// import 'package:arch_team_power/features/favorite_screen/presentation/widget/fav_list.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'post_favourite_cubit_state.dart';

// class PostFavouriteCubit extends Cubit<PostFavouriteCubitState> {
//   final FavouriteRepo favouriteRepo;
//   PostFavouriteCubit(this.favouriteRepo) : super(PostFavouriteCubitInitial());

//   List<FavoriteModel> favoriteList = [];

//   void setInitialFavorites(List<FavoriteModel> items) {
//     favoriteList = items;
//     emit(PostFavouriteUpdated(List.from(favoriteList)));
//   }

//   Future<void> toggleFavourite(int placeId) async {
//     emit(PostFavouriteLoading());
//     final result = await favouriteRepo.toggleFavourite(placeId);

//     result.fold((failure) => emit(PostFavouriteFailure(failure.message)), (
//       response,
//     ) {
//       final index = favoriteList.indexWhere((element) => element.id == placeId);
//       if (index != -1) {
//         favoriteList[index].isFavorite =
//             response.data?.isFavorite ?? favoriteList[index].isFavorite;
//         emit(PostFavouriteUpdated(List.from(favoriteList)));
//       }
//     });
//   }
// }
