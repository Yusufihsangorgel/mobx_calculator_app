import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator_app/MVVM-DERSI/lib/Post/View-Model/post_view_model.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _postView = PostViewModel();
    _postView.getPost();
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: () => _postView.getPost(),
        child: _buildListView(_postView),
      ),
      // floatingActionButton: _floatingButton(_postView),
    );
  }

  // FloatingActionButton _floatingButton(PostViewModel postView) {
  //   return FloatingActionButton(
  //     onPressed: () {
  //       postView.getPost();
  //     },
  //   );
  // }

  Widget _buildListView(PostViewModel postView) {
    return Observer(
      builder: (_) {
        if (postView.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (postView.isError) {
            return Center(
              child: Text(postView.errorMessage),
            );
          } else {
            return ListView.builder(
              itemCount: postView.posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(postView.posts[index].id.toString()),
                  subtitle: Text(postView.posts[index].body),
                );
              },
            );
          }
        }
      },
    );
  }
}
