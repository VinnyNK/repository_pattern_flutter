import 'package:json_annotation/json_annotation.dart';

part 'login_google_response.g.dart';

@JsonSerializable()
class LoginGoogleResponse {
  final String accessToken, refreshToken;
  final DateTime criadoEm, expiraEm;

  LoginGoogleResponse({required this.accessToken, required this.refreshToken, required this.criadoEm, required this.expiraEm });

  factory LoginGoogleResponse.fromJson(Map<String, dynamic> json) => _$LoginGoogleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginGoogleResponseToJson(this);
}