import 'package:bloc/bloc.dart';

part 'page_cubit_state.dart';

class PageCubitCubit extends Cubit<PageCubit> {
  PageCubitCubit() : super(PageCubit(0));

  void changePage(int index) {
    emit(PageCubit(index));
  }
}
