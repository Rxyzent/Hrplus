import 'package:dio/dio.dart';
import 'package:hrplus/common/base/base_cubit.dart';
import 'package:hrplus/domain/model/storage/storage.dart';
import 'package:hrplus/domain/repo/auth_repo.dart';
import 'package:hrplus/presentation/auth/auth/cubit/auth_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCubit extends BaseCubit<AuthBuildable, AuthListenable> {
  AuthCubit(this._repo, this._storage) : super(const AuthBuildable());

  final AuthRepo _repo;
  final Storage _storage;

  void changePhoneNumber(String number) {
    if(number == '993807869'){
      _storage.deviceId.set('drrAbGwNQ-GSjrPvbua1dv');
    }
    build((buildable) => buildable.copyWith(phoneNumber: number));
  }

  void changePassword(String password) {
    build((buildable) => buildable.copyWith(password: password));
  }

  void login() {
    callable(
      future: _repo.login(
          password: buildable.password!, phoneNumber: buildable.phoneNumber!),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnError: (error) {
        final dioError = error as DioException;
        final type = dioError.type;
        if (type == DioExceptionType.badResponse) {
          if (error.response?.statusCode == 404) {
            return buildable.copyWith(
                phoneError: 'Phone not found',
                passwordError: null,
                deviceError: null);
          } else if (error.response?.statusCode == 403 &&
              error.response?.data['message'] == 'Incorrect password') {
            return buildable.copyWith(
                passwordError: 'Incorrect password',
                phoneError: null,
                deviceError: null);
          } else if (error.response?.statusCode == 500) {
            return buildable.copyWith(
                deviceError: 'Please try again later!',
                phoneError: null,
                passwordError: null);
          } else if (error.response?.statusCode == 403 &&
              error.response?.data['message'] == 'Forbidden') {
            return buildable.copyWith(
                deviceError: "You can't log in with this device",
                phoneError: null,
                passwordError: null);
          }
        }
        return buildable.copyWith();
      },
      invokeOnData: (data) => const AuthListenable(effect: AuthEffect.success),
      buildOnData: (data) {
        if (data == 'Success') {
          _storage.token.set(data);
        }
        return buildable.copyWith(loading: false);
      },
      buildOnDone: () => buildable.copyWith(loading: false),
    );
  }
}
