import 'package:complete_advanced_flutter/app/constants.dart';
import 'package:complete_advanced_flutter/data/responses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email,
      @Field("password") String password,
      @Field("imei") String imei,
      @Field("deviceType") String deviceType,
      );

  @POST("/customers/forgotPassword")
  Future<ForgotPasswordResponse> forgetPassword(
      @Field("email") String email,
      );

  @POST("/customers/register")
  Future<AuthenticationResponse> register(
      @Field("country_mobile_code") String countryMobileCode,
      @Field("user_name") String userName,
      @Field("email") String email,
      @Field("password") String password,
      @Field("mobile_number") String mobileNumber,
      @Field("profile") String profile,
      );
}
