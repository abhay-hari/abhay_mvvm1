// TODO Implement this library.import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'JsonPlaceHolderView.dart';
class JsonPlaceHolderView extends JsonPlaceHolderViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
            : const Text("Jsonplaceholder22222"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>  getPost(),
        child: const Icon(Icons.favorite_border),
      ),
      body: ListView.builder(
          itemCount: postModel.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text(postModel[index].title.toString()),
              subtitle: Text(postModel[index].body.toString()),
              leading: Text(postModel[index].id.toString()),
            ),
          )),
    );
  }
}