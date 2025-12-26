import 'data.dart';

class LikeModel {
	bool? success;
	Data? data;
	String? message;

	LikeModel({this.success, this.data, this.message});

	factory LikeModel.fromJson(Map<String, dynamic> json) => LikeModel(
				success: json['success'] as bool?,
				data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
				message: json['message'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'success': success,
				'data': data?.toJson(),
				'message': message,
			};
}
