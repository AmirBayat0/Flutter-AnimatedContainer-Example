class PicModel {
  String title;
  String size;
  String extent;

  String address;
  String imgAdress;
  //
  PicModel({
    required this.title,
    required this.size,
    required this.extent,
    required this.address,
    required this.imgAdress,
  });
}

List<PicModel> picsmodel = [
  PicModel(
      title: "Party1.jpg",
      size: "4.67MB",
      extent: "4040X5160",
      address: "images/1.jpg",
      imgAdress: "Internal storage/Picture/Telegram"),
  PicModel(
      title: "Party2.jpg",
      size: "3.22MB",
      extent: "4040X5160",
      address: "images/2.jpg",
      imgAdress: "Internal storage/Picture/Telegram"),
  PicModel(
      title: "Party3.jpg",
      size: "8.10MB",
      extent: "4040X5160",
      address: "images/3.jpg",
      imgAdress: "Internal storage/Picture/Telegram"),
  PicModel(
      title: "Party4.jpg",
      size: "5.11MB",
      extent: "4040X5160",
      address: "images/4.jpg",
      imgAdress: "Internal storage/Picture/Telegram"),
  
];
