import 'package:mobx/mobx.dart';
import 'package:mobx_calculator_app/MVVM-DERSI/lib/Post/repository/post_api.dart';

import '../Model/post.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  final errorMessage = 'Beklenmedik Bir Hata Oluştu';
  @observable
  List<Post> posts = [];

  @action
  getPost() async {
    isLoadingToggle();

    try {
      isErrorToggle(false);
      final _postApi = PostApi();

      posts = await _postApi.getPost();

      isLoadingToggle();
    } catch (e) {
      isErrorToggle(true);
      Exception();
    }
  }

  @observable
  bool isError = false;

  @action
  isErrorToggle(bool value) {
    isError = value;
  }

  @observable
  bool isLoading = false;

  @action
  isLoadingToggle() {
    isLoading = !isLoading;
  }

  @observable
  int counter = 0;

  @computed
  bool get isEven => counter % 2 == 0;
}
/* 
  @observable -> Dinlenen değer

  @action -> fonksiyonlar(observable'ın üzerinde yaptığımız değişiklik)

  @computed -> 

*/


