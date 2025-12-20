import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'update_profile_data_state.dart';

class UpdateProfileDataCubit extends Cubit<UpdateProfileDataState> {
  UpdateProfileDataCubit() : super(UpdateProfileDataInitial());
}
