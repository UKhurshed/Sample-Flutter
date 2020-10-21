class Address{
  int id;
  String country;
  String addressLine;
  String addressApartment;
  String city;
  String state;
  String zip;

  Address(
      {this.id,
        this.country,
        this.addressLine,
        this.addressApartment,
        this.city,
        this.state,
        this.zip});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    addressLine = json['address_line'];
    addressApartment = json['address_apartment'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country'] = this.country;
    data['address_line'] = this.addressLine;
    data['address_apartment'] = this.addressApartment;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zip'] = this.zip;
    return data;
  }

}