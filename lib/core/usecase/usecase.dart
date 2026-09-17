import 'package:fpdart/fpdart.dart';
import 'failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

final class NoParams {
  const NoParams();
}
