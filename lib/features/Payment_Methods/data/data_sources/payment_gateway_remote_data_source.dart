import 'package:arch_team_power/core/services/api_service.dart';
import 'package:arch_team_power/features/Payment_Methods/data/model/Subscription_Plan_Model/subscription_plans_response_model.dart';
import 'package:arch_team_power/features/Payment_Methods/domain/entity/subscription_plan_entity.dart';

abstract class PaymentGatewayRemoteDataSource {
  Future<List<SubscriptionPlanEntity>> getSubscriptionPlans();
}

class PaymentGatewayRemoteDataSourceImpl
    implements PaymentGatewayRemoteDataSource {
  final ApiService apiService;

  PaymentGatewayRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<SubscriptionPlanEntity>> getSubscriptionPlans() async {
    final response = await apiService.get(endPoint: 'subscription/plans');
    final result = SubscriptionPlansResponseModel.fromJson(response);
    return result.data;
  }
}
