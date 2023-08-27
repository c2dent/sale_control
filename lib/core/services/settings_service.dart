import 'package:hasap_admin/core/models/user.dart';
import 'package:hasap_admin/core/user/user_repository.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsService {
  Future<User?> getCurrentUser();
}

@Singleton(as: SettingsService)
class SettingsServiceImpl extends SettingsService {
  final UserRepository userRepository;

  SettingsServiceImpl(this.userRepository);

  @override
  Future<User?> getCurrentUser() async {
    final result = await userRepository.getUser();
    if (result.isLeft) return null;
    return result.right;
  }
}
