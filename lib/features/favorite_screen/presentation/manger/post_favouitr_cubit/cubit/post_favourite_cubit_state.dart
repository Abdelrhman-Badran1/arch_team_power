import 'package:arch_team_power/features/favorite_screen/data/models/post/post_favourite/post_favourite_respose.dart';

abstract class PostFavouriteState {}

class PostFavouriteInitial extends PostFavouriteState {}

class PostFavouriteLoading extends PostFavouriteState {}

class PostFavouriteSuccess extends PostFavouriteState {
  final PostFavouriteResponse response;
  PostFavouriteSuccess(this.response);
}

class PostFavouriteFailure extends PostFavouriteState {
  final String errorMessage;
  PostFavouriteFailure(this.errorMessage);
}

// part of 'post_favourite_cubit_cubit.dart';

// @immutable
// sealed class PostFavouriteCubitState {}

// final class PostFavouriteCubitInitial extends PostFavouriteCubitState {}

// final class PostFavouriteLoading extends PostFavouriteCubitState {}

// final class PostFavouriteUpdated extends PostFavouriteCubitState {
//   final List<FavoriteModel> favorites;
//   PostFavouriteUpdated(this.favorites);
// }

// final class PostFavouriteFailure extends PostFavouriteCubitState {
//   final String errorMessage;
//   PostFavouriteFailure(this.errorMessage);
// }
