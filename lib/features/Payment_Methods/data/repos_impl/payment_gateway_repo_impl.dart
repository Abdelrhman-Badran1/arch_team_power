import 'package:arch_team_power/core/errors/failure.dart';
import 'package:arch_team_power/features/Payment_Methods/data/data_sources/payment_gateway_remote_data_source.dart';
import 'package:arch_team_power/features/Payment_Methods/domain/entity/subscription_plan_entity.dart';
import 'package:arch_team_power/features/Payment_Methods/domain/repo/payment_gateway_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class PaymentGatewayRepoImpl implements PaymentGatewayRepo {
  final PaymentGatewayRemoteDataSource paymentGatewayRemoteDataSource;

  PaymentGatewayRepoImpl({required this.paymentGatewayRemoteDataSource});
  @override
  Future<Either<Failure, List<SubscriptionPlanEntity>>>
  getSubscriptionPlans() async {
    try {
      final response = await paymentGatewayRemoteDataSource
          .getSubscriptionPlans();
      return Right(response);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
