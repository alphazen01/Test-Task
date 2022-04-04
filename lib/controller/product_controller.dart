import 'package:get/get.dart';
import 'package:test/Model/product_model.dart';
import 'package:test/services/api_services.dart';

class ProductController extends GetxController{

var isLoading=true.obs;
var productList = <ProductModel>[].obs;

@override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

void fetchProducts()async{
  isLoading(true);
   productList.value = await ApiServices.fetchProduct();

  
    isLoading(false);
  
}

}