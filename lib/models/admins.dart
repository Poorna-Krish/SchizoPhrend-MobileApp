class Admin {
  final String? name, email, password, image;
  final int? id;

  Admin(
      {this.name, this.email, this.id, this.password, this.image});
}
List<Admin> demoAvailableDoctors = [
  Admin(
    name:'Poorna',
    email:'annapoornakathreya@gmail.com',
    password:'123456789',
    image:'assets/images/search_doc_1.png'
  )
];