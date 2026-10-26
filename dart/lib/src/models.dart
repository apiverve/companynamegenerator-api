/// Response models for the Company Name Generator API.

/// API Response wrapper.
class CompanynamegeneratorResponse {
  final String status;
  final dynamic error;
  final CompanynamegeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CompanynamegeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CompanynamegeneratorResponse.fromJson(Map<String, dynamic> json) => CompanynamegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CompanynamegeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Company Name Generator API.

class CompanynamegeneratorData {
  String? keyword;
  String? count;
  List<String>? names;

  CompanynamegeneratorData({
    this.keyword,
    this.count,
    this.names,
  });

  factory CompanynamegeneratorData.fromJson(Map<String, dynamic> json) => CompanynamegeneratorData(
      keyword: json['keyword'],
      count: json['count'],
      names: (json['names'] as List?)?.cast<String>(),
    );
}

class CompanynamegeneratorRequest {
  String keyword;
  int? count;

  CompanynamegeneratorRequest({
    required this.keyword,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      'keyword': keyword,
      if (count != null) 'count': count,
    };
}
