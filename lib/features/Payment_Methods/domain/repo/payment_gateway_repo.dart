import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/Payment_Methods/domain/entity/subscription_plan_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PaymentGatewayRepo {
  Future<Either<Failure, List<SubscriptionPlanEntity>>> getSubscriptionPlans();
}
