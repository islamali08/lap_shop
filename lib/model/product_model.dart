class productlistmodel {

  List<productmodel>? product;
  String? message ;

  productlistmodel.fromjeson(Map<String, dynamic> json) {
    product = [];

    json['products'].forEach((elment) => product!.add(productmodel.fromjeson(elment)));
    message= json['message'];




  }




}

class productmodel {

int? id ;
String? company ;
String?name;
String?type ;
String?price;
String?image;
String?description;



productmodel.fromjeson(Map<String, dynamic> json) {
  id = json['id'];
  company = json['company'];
  name = json['name'];
  type = json['type'];
  price = json['price'];
  image = json['image'];
  description = json['description'];
}


}