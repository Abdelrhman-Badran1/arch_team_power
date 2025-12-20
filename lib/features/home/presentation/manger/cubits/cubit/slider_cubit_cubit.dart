import 'package:arch_team_power/features/home/data/model/home/slider.data.dart';
import 'package:arch_team_power/features/home/data/repos_impl/home_repo_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'slider_cubit_state.dart';

class SliderCubitCubit extends Cubit<SliderCubitState> {
  SliderCubitCubit(this.homeRepoImplemtion) : super(SliderCubitInitial());
  final HomeRepoImplemtion homeRepoImplemtion;

  Future<void> fetchSliders() async {
    emit(SliderCubitLoading());
    final result = await homeRepoImplemtion.fetchSliders();
    result.fold(
      (l) => emit(SliderCubitError(l.message)),
      (r) => emit(SliderCubitLoaded(r)),
    );
  }
}
