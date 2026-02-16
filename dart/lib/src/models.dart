/// Response models for the Company Name Generator API.

/// API Response wrapper.
class CompanynamegeneratorResponse {
  final String status;
  final dynamic error;
  final CompanynamegeneratorData? data;

  CompanynamegeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CompanynamegeneratorResponse.fromJson(Map<String, dynamic> json) => CompanynamegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CompanynamegeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
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
