class RegisterClass {
final String name;
final String email;
final String password;
final String confirmPassword;
final String? phoneNumper;
final String? address;

RegisterClass({
  required this.name,
  required this.email,
  required this.password,
  required this.confirmPassword,
  this.phoneNumper,
  this.address
});

toMap(){
return{
  "name":name,
  "email":email,
  "password":password,
  "password_confirmation":confirmPassword,
  "phone":phoneNumper,
  "address":address,



};
}

}