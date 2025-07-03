class Employee {
  final int id;
  final String name;
  final String company;
  final String username;
  final String email;
  final String address;
  final String zip;
  final String state;
  final String country;
  final String phone;
  final String photo;

  Employee({
    required this.id,
    required this.name,
    required this.company,
    required this.username,
    required this.email,
    required this.address,
    required this.zip,
    required this.state,
    required this.country,
    required this.phone,
    required this.photo,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      company: json['company'],
      username: json['username'],
      email: json['email'],
      address: json['address'],
      zip: json['zip'],
      state: json['state'],
      country: json['country'],
      phone: json['phone'],
      photo: json['photo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'company': company,
      'username': username,
      'email': email,
      'address': address,
      'zip': zip,
      'state': state,
      'country': country,
      'phone': phone,
      'photo': photo,
    };
  }
}
