// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$apiresponseImpl _$$apiresponseImplFromJson(Map<String, dynamic> json) =>
    _$apiresponseImpl(
      page: (json['page'] as num).toInt(),
      per_page: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      total_pages: (json['total_pages'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$apiresponseImplToJson(_$apiresponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_pages': instance.total_pages,
      'data': instance.data,
    };
