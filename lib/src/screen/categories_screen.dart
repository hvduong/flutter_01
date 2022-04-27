import 'package:flutter/material.dart';
import 'package:flutter_01/src/model/categories_model.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title:  Center(child: item(name: 'Categories')),
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: _categoriesBody(),
    );
  }

  Widget _categoriesBody() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_searchByCategories(),Expanded(child: _listCategories())],
      ),
    );
  }

  Widget _searchByCategories() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 60,
      width: 315,
      child: Row(
        children: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Text('Search by categories', style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }
  Widget _listCategories(){
    return ListView.builder(
      itemCount:categories.length,
      itemBuilder: (_,index){
        return Row(children: [
         item(name: categories[index].name)
        ],);
      });
  }
  Widget item({required String name}){
    return Text('$name');
  }
}
