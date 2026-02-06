class CrepeModel {
  String id;
  final String name;
  final String details;
  final num price;
  final String imgurl;
  CrepeModel( {required this.name, required this.details, required this.price,required this.imgurl,this.id=''});
  factory CrepeModel.fromjson(Map<String, dynamic> json) {
    return CrepeModel(
      id: json['id'],
      name: json['name'],
      details: json['details'],
      price: json['price'],
      imgurl: json['imgurl']??''
    );
  }
  Map<String, dynamic> tojson() {
    return {"id":id,'name': name, 'details': details, 'price': price,"imgurl":imgurl};
  }
}