// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$userImpl _$$userImplFromJson(Map<String, dynamic> json) => _$userImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      avartar: json['avartar'] as String,
    );

Map<String, dynamic> _$$userImplToJson(_$userImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avartar': instance.avartar,
    };