class ProfileDoctorModel {
  int id = 0;
  String firstName = '';
  String otherName = '';
  String lastName = '';
  String address = '';
  String? dob = '';

  String email = '';
  String phoneNumber = '';

  int stateID = 0;
  int lgaID = 0;
  String gender = '';
  String? language = '';
  String? fee = '';

  ProfileDoctorModel({
    required this.firstName,
    required this.otherName,
    required this.lastName,
    required this.address,

    required this.stateID,
    required this.lgaID,
    required this.gender,
    this.language,
    this.fee,
    this.dob,

    required this.id,
  });

  ProfileDoctorModel.fromJson(Map<String, dynamic> json) {
    firstName = json['name'];
    otherName = json['other_name'];
    lastName = json['last_name'];
    address = json['address'];

    stateID = json['state_id'];
    lgaID = json['lga_id'];
    gender = json['gender'];
    language = json['language']??'';
  }

  Map<String, String> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['name'] = this.firstName;
    data['other_name'] = this.otherName;
    data['last_name'] = this.lastName;
    data['address'] = this.address;

    data['state_id'] = this.stateID.toString();
    data['lga_id'] = this.lgaID.toString();
    data['gender'] = this.gender;
    data['language'] = this.language??'';
    data['fee'] = this.fee??'';
    data['dob'] = this.dob??'';

    return data;
  }
}

class AmbulanceProfileModel {
  int id = 0;
  String name = '';

  int stateID = 0;
  int lgaID = 0;
  String? dob = '';

  AmbulanceProfileModel({
    required this.name,

    required this.stateID,
    required this.lgaID,
    this.dob,

    required this.id,
  });

  AmbulanceProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    stateID = json['state_id'];
    lgaID = json['lga_id'];
    dob = json['dob'];
  }

  Map<String, String> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['name'] = this.name;
    data['state_id'] = this.stateID.toString();
    data['lga_id'] = this.lgaID.toString();
    data['dob'] = this.dob.toString();

    data['state_id'] = this.stateID.toString();
    data['lga_id'] = this.lgaID.toString();

    return data;
  }
}

