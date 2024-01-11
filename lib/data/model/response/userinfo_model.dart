class UserInfoModel {
  int id = 0;
  String firstName = '';
  String otherName = '';
  String lastName = '';
  String name = '';
  String hospitalName = '';
  String phoneNumber = '';
  String email = '';
  String address = '';

  String dob = '';

  String emailVerificationStatus = '';

  String password = '';

  String stateID = '';
  String lgaID = '';
  String language = '';
  String otherLanguage = '';

  String rating = '';
  String wallet = '';
  String doctorType = '';
  String gender = '';
  String mcdnNumber = '';
  String specialityCode = '';
  String picture = '';
  String companyOrganisation = '';
  String workingFrom = '';
  String workingTo = '';
  String serviceFee = '';
  String country = '';
  String referedBy = '';
  String image = '';
  String degreeCertificate = '';
  String medicalLicence = '';
  String backingInformation = '';
  String aboutMe = '';
  String status = '';
  String servicePreferences = '';
  String reasonForDisapprove = '';

  String account_name = '';
  String account_number = '';
  String account_bank = '';
  String bank_code = '';

  String updatedAt = '';
  String createdAt = '';

  UserInfoModel({required this.firstName, required this.otherName, required this.lastName, required this.phoneNumber, required this.email, required this.address, required this.password,
    required this.account_name,
    required this.account_number,
    required this.account_bank,
    required this.bank_code,
    required this.createdAt, required this.updatedAt});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name']??'';
    otherName = json['other_names']??json['other_name']??'';
    lastName = json['last_names']??json['last_name']??'';
    name = json['name']??'';
    hospitalName = json['hospital_name']??'';
    email = json['email']??'';
    dob = json['dob']??'';
    phoneNumber = json['phone_number']??json['phone']??'';
    address = json['address']??'';
    stateID = json['state_id']??'';
    lgaID = json['lga_id']??'';
    emailVerificationStatus = json['email_verification_status']??'';
    rating = json['rating']??'';
    wallet = json['wallet']??'0.0';
    doctorType = json['nurse_type']??'';
    gender = json['gender']??'';
    language = json['language']??'';
    mcdnNumber = json['mcdn_number']??'';
    specialityCode = json['speciality_code']??'';
    otherLanguage = json['other_language']??'';
    picture = json['picture']??'';
    companyOrganisation = json['company_organisation']??json['company']??'';
    workingFrom = json['working_from']??'';
    workingTo = json['working_to']??'';
    serviceFee = json['service_fee']??'';
    country = json['country']??'';
    referedBy = json['refered_by']??'';
    image = json['image']??'';
    degreeCertificate = json['degree_cert']??'';
    medicalLicence = json['medical_licence']??'';
    backingInformation = json['backing_inform']??'';
    aboutMe = json['about_me']??'';
    status = json['status']??'';
    servicePreferences = json['service_preferences']??'';
    reasonForDisapprove = json['reason_for_disapprove']??'';

    account_name = json['account_name']??"";
    account_bank = json['account_bank']??"";
    account_number = json['account_number']??"";
    bank_code = json['bank_code']??"";
    createdAt = json['created_at']??'';
    updatedAt = json['updated_at']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['first_name'] = this.firstName;
    data['other_name'] = this.otherName;
    data['last_name'] = this.lastName;
    data['hospital_name'] = this.hospitalName;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['address'] = this.address;
    data['state_id'] = this.stateID;
    data['lga_id'] = this.lgaID;
    data['email_verification_status'] = this.emailVerificationStatus;
    data['rating'] = this.rating;
    data['wallet'] = this.wallet;
    data['doctor_type'] = this.doctorType;
    data['gender'] = this.gender;
    data['language'] = this.language;
    data['mcdn_number'] = this.mcdnNumber;
    data['speciality_code'] = this.specialityCode;
    data['other_language'] = this.otherLanguage;
    data['picture'] = this.picture;
    data['campany_organisation'] = this.companyOrganisation;
    data['working_from'] = this.workingFrom;
    data['working_to'] = this.workingTo;
    data['service_fee'] = this.serviceFee;
    data['country'] = this.country;
    data['refered_by'] = this.referedBy;
    data['image'] = this.image;
    data['degree_cert'] = this.degreeCertificate;
    data['medical_licence'] = this.medicalLicence;
    data['backing_inform'] = this.backingInformation;
    data['about_me'] = this.aboutMe;
    data['status'] = this.status;
    data['service_preferences'] = this.servicePreferences;
    data['reason_for_disapprove'] = this.reasonForDisapprove;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }

  updateProfile({firstName, lastName, otherName, address, gender, stateID, lgaID}){
    this.firstName = firstName;
    this.lastName = lastName;
    this.otherName = otherName;
    this.address = address;
    this.gender = gender;
    this.stateID = stateID.toString();
    this.lgaID = lgaID.toString();
  }

  ambulanceUpdateUser({name, dob, stateID, lgaID}){
    firstName = name;
    this.dob = gender;
    this.stateID = stateID.toString();
    this.lgaID = lgaID.toString();
  }

  updateWallet(double newWallet){
    this.wallet=newWallet.toString();
  }
}