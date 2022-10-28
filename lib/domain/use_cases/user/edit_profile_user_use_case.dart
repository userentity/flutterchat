import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

import '../../entities/user_entity.dart';
import '../../repositories/user_repository.dart';
import '../base_use_case.dart';

abstract class EditProfileUserUseCase
    implements BaseUseCase<Future<void>, EditProfileUserArgs> {}

@Injectable(as: EditProfileUserUseCase)
class EditProfileUserUseCaseImpl implements EditProfileUserUseCase {
  const EditProfileUserUseCaseImpl(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<void> call(EditProfileUserArgs args) async {
    UserEntity profileUser = _userRepository.fetchProfileUser();

    profileUser = profileUser.copyWith(name: args.name);

    if (args.imagePath != null) {
      String imageExtension = extension(args.imagePath!);

      String imageUrl = await _userRepository.uploadProfileImage(
          fileName: profileUser.id + imageExtension, path: args.imagePath!);
      profileUser = profileUser.copyWith(imageUrl: imageUrl);
    }

    await _userRepository.editUser(profileUser);
    await _userRepository.setProfileUser(profileUser);
  }
}

class EditProfileUserArgs {
  const EditProfileUserArgs({required this.name, this.imagePath});

  final String name;

  final String? imagePath;
}
