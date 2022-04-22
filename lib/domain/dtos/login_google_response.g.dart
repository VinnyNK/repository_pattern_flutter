// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_google_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginGoogleResponse _$LoginGoogleResponseFromJson(Map<String, dynamic> json) =>
    LoginGoogleResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      criadoEm: DateTime.parse(json['criadoEm'] as String),
      expiraEm: DateTime.parse(json['expiraEm'] as String),
    );

Map<String, dynamic> _$LoginGoogleResponseToJson(
        LoginGoogleResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'criadoEm': instance.criadoEm.toIso8601String(),
      'expiraEm': instance.expiraEm.toIso8601String(),
    };
