
class AddressModel {
  int addressID;
  String addressLabel;
  String addressCountry;
  String addressCity;
  String addressStreet;
  String addetionalDetails;
  double lat;
  double long;
  String mobileNO;
  AddressModel({
    required this.addressID,
    required this.addressLabel,
    required this.addressCountry,
    required this.addressCity,
    required this.addressStreet,
    required this.addetionalDetails,
    required this.mobileNO,
    required this.lat,
    required this.long,
  });
}

