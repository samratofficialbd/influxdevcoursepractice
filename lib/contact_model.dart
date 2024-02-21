class ContactModel {
  final String name;
  final String email;
  final String phoneNumber;
  final String? imageUrl;



  ContactModel({required this.name, required this.email, required this.phoneNumber, this.imageUrl});
}
