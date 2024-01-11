class NurseType{
  String id = '';
  String title = '';
  NurseType({required this.id, required this.title});
  NurseType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }
}
class NurseService{
  String id = '';
  String title = '';
  NurseService({required this.id, required this.title});
  NurseService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }
}

class DoctorType{
  String id = '';
  String title = '';
  DoctorType({required this.id, required this.title});
  DoctorType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['name'];
  }
}
class ConsultationType{
  String id = '';
  String title = '';
  ConsultationType({required this.id, required this.title});
  ConsultationType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['type'];
  }
}
class ConsultationFee{
  String id = '';
  String servicesType = '';
  String price = '';
  ConsultationFee({required this.id, required this.servicesType, required this.price});
  ConsultationFee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    servicesType = json['services_type'];
    price = json['price'];
  }
}
class ServicePref{
  String id = '';
  String type = '';
  ServicePref({required this.id, required this.type});
  ServicePref.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }
}
