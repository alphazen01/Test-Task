

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/controller/product_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test/widget/custom_alert.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());
   

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
       
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 42),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search in Swipexyz..",
                      fillColor: Color(0xffF2F2F7),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey, width: 2)),
                      prefixIcon: Icon(Icons.search))),
            ),
            Expanded(
              child: Obx(
                () => SizedBox(
                  child: productController.productList.isEmpty
                      ? CircularProgressIndicator()
                      : StaggeredGridView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          itemCount: productController.productList.length,
                          gridDelegate:
                              SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 6,
                            mainAxisSpacing: 6,
                            staggeredTileBuilder: (int _index) {
                              _index = _index % 9;
                              int crossAxisCount = 1;
                              double mainAxisCount = 1;
                              if (_index == 3) {
                                crossAxisCount = 2;
                                mainAxisCount = 2;
                              }
                              return StaggeredTile.count(
                                crossAxisCount,
                                mainAxisCount,
                              );
                            },
                          ),
                          itemBuilder: (context, _index) {
                            return _HomeScrItem(
                              id: productController.productList[_index].id,
                              imgUri:
                                  productController.productList[_index].images[0],
                            );
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}




class _HomeScrItem extends StatelessWidget {
  const _HomeScrItem({
    Key? key,
    required this.id,
    required this.imgUri,
  }) : super(key: key);
  final int id;
  final String imgUri;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       showDialog(
      context: context, 
      builder:(BuildContext context){
        return CustomAlert();
  } 
  );
      },
      borderRadius: BorderRadius.circular(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          imgUri,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
