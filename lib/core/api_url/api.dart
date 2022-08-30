class Api {
  ///Authentication api
  static const String apiUrl = "https://pharmaserve-dev.herokuapp.com/api/v1/";
  static const  String loginUrl = apiUrl + "auth/login";
  static const String forgetPassword  = apiUrl + "auth/forget-password";
  static const String resetPassword  = apiUrl + "auth/reset-password";

///customers api
 static const String customerUrl = apiUrl + "customer/create";

}