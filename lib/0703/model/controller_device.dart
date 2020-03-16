class ControllerModel {
  String image;
  int id;
  bool status;

  ControllerModel({this.id, this.status, this.image});
}

List<ControllerModel> controllers = [
  ControllerModel(
      id: 1, status: true, image: "assets/0703/lampon.png"),
  ControllerModel(
      id: 2, status: false, image: "assets/0703/lampoff.png"),
  ControllerModel(
      id: 3, status: false, image: "assets/0703/lampoff.png"),
  ControllerModel(
      id: 4, status: true, image: "assets/0703/lampon.png"),
  ControllerModel(
      id: 5, status: true, image: "assets/0703/lampon.png"),
  ControllerModel(
      id: 6, status: true, image: "assets/0703/lampon.png"),
  ControllerModel(
      id: 7, status: true, image: "assets/0703/lampon.png"),
  
  
];
