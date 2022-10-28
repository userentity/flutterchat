// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/services/cache_service.dart' as _i3;
import 'core/services/video_service.dart' as _i9;
import 'data/data_sources/remote/firebase_auth_data_source.dart' as _i4;
import 'data/data_sources/remote/firebase_firestore_data_source.dart' as _i5;
import 'data/data_sources/remote/firebase_storage_data_source.dart' as _i6;
import 'data/repositories/auth_repository_impl.dart' as _i11;
import 'data/repositories/chat_repository_impl.dart' as _i13;
import 'data/repositories/user_repository_impl.dart' as _i8;
import 'domain/entities/chat_entity.dart' as _i36;
import 'domain/repositories/auth_repository.dart' as _i10;
import 'domain/repositories/chat_repository.dart' as _i12;
import 'domain/repositories/user_repository.dart' as _i7;
import 'domain/use_cases/auth/check_auth_use_case.dart' as _i14;
import 'domain/use_cases/auth/sign_in_google_use_case.dart' as _i28;
import 'domain/use_cases/auth/sign_in_use_case.dart' as _i29;
import 'domain/use_cases/auth/sign_out_use_case.dart' as _i30;
import 'domain/use_cases/auth/sign_up_google_use_case.dart' as _i31;
import 'domain/use_cases/auth/sign_up_use_case.dart' as _i32;
import 'domain/use_cases/chat/add_chat_use_case.dart' as _i34;
import 'domain/use_cases/chat/delete_chat_use_case.dart' as _i15;
import 'domain/use_cases/chat/fetch_chats_use_case.dart' as _i17;
import 'domain/use_cases/chat/fetch_messages_use_case.dart' as _i18;
import 'domain/use_cases/chat/message_viewed_use_case.dart' as _i21;
import 'domain/use_cases/chat/send_audio_message_use_case.dart' as _i24;
import 'domain/use_cases/chat/send_image_message_use_case.dart' as _i25;
import 'domain/use_cases/chat/send_text_message_use_case.dart' as _i26;
import 'domain/use_cases/chat/send_video_message_use_case.dart' as _i27;
import 'domain/use_cases/chat/subscribe_for_messages_use_case.dart' as _i33;
import 'domain/use_cases/user/edit_profile_user_use_case.dart' as _i16;
import 'domain/use_cases/user/fetch_profile_user_use_case.dart' as _i19;
import 'domain/use_cases/user/fetch_users_use_case.dart' as _i20;
import 'presentation/chat_list_page/bloc/chat_list_bloc.dart' as _i37;
import 'presentation/chat_page/bloc/chat_bloc.dart' as _i35;
import 'presentation/login_page/bloc/login_bloc.dart' as _i38;
import 'presentation/new_chat_page/bloc/new_chat_bloc.dart' as _i39;
import 'presentation/onboarding_page/bloc/onboarding_bloc.dart' as _i22;
import 'presentation/profile_edit_page/bloc/profile_edit_bloc.dart' as _i23;
import 'presentation/profile_page/bloc/profile_bloc.dart' as _i40;
import 'presentation/registration_page/bloc/registration_bloc.dart'
    as _i41; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CacheService>(() => _i3.CacheServiceImpl());
  gh.singleton<_i4.FirebaseAuthDataSource>(_i4.FirebaseAuthDataSourceImpl());
  gh.singleton<_i5.FirebaseFirestoreDataSource>(
      _i5.FirebaseFirestoreDataSourceImpl());
  gh.singleton<_i6.FirebaseStorageDataSource>(
      _i6.FirebaseStorageDataSourceImpl());
  gh.lazySingleton<_i7.UserRepository>(() => _i8.UserRepositoryImpl(
        get<_i5.FirebaseFirestoreDataSource>(),
        get<_i6.FirebaseStorageDataSource>(),
      ));
  gh.singleton<_i9.VideoService>(_i9.VideoServiceImpl());
  gh.lazySingleton<_i10.AuthRepository>(
      () => _i11.AuthRepositoryImpl(get<_i4.FirebaseAuthDataSource>()));
  gh.lazySingleton<_i12.ChatRepository>(() => _i13.ChatRepositoryImpl(
        get<_i5.FirebaseFirestoreDataSource>(),
        get<_i6.FirebaseStorageDataSource>(),
      ));
  gh.factory<_i14.CheckAuthUseCase>(() => _i14.CheckAuthUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i15.DeleteChatUseCase>(
      () => _i15.DeleteChatUseCaseImpl(get<_i12.ChatRepository>()));
  gh.factory<_i16.EditProfileUserUseCase>(
      () => _i16.EditProfileUserUseCaseImpl(get<_i7.UserRepository>()));
  gh.factory<_i17.FetchChatsUseCase>(() => _i17.FetchChatsUseCaseImpl(
        get<_i12.ChatRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i18.FetchMessagesUseCase>(() => _i18.FetchMessagesUseCaseImpl(
        get<_i12.ChatRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i19.FetchProfileUserUseCase>(
      () => _i19.FetchProfileUserUseCaseImpl(get<_i7.UserRepository>()));
  gh.factory<_i20.FetchUsersUseCase>(
      () => _i20.FetchUsersUseCaseImpl(get<_i7.UserRepository>()));
  gh.factory<_i21.MessageViewedUseCase>(
      () => _i21.MessageViewedUseCaseImpl(get<_i12.ChatRepository>()));
  gh.factory<_i22.OnboardingBloc>(
      () => _i22.OnboardingBloc(get<_i14.CheckAuthUseCase>()));
  gh.factory<_i23.ProfileEditBloc>(() => _i23.ProfileEditBloc(
        get<_i16.EditProfileUserUseCase>(),
        get<_i19.FetchProfileUserUseCase>(),
      ));
  gh.factory<_i24.SendAudioMessagesUseCase>(
      () => _i24.SendAudioMessagesUseCaseImpl(
            get<_i12.ChatRepository>(),
            get<_i7.UserRepository>(),
          ));
  gh.factory<_i25.SendImageMessagesUseCase>(
      () => _i25.SendImageMessagesUseCaseImpl(
            get<_i12.ChatRepository>(),
            get<_i7.UserRepository>(),
          ));
  gh.factory<_i26.SendTextMessagesUseCase>(
      () => _i26.SendTextMessagesUseCaseImpl(
            get<_i12.ChatRepository>(),
            get<_i7.UserRepository>(),
          ));
  gh.factory<_i27.SendVideoMessagesUseCase>(
      () => _i27.SendVideoMessagesUseCaseImpl(
            get<_i12.ChatRepository>(),
            get<_i7.UserRepository>(),
            get<_i9.VideoService>(),
          ));
  gh.factory<_i28.SignInGoogleUseCase>(() => _i28.SignInUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i29.SignInUseCase>(() => _i29.SignInUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i30.SignOutUseCase>(() => _i30.SignOutUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i31.SignUpGoogleUseCase>(() => _i31.SignUpUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i32.SignUpUseCase>(() => _i32.SignUpUseCaseImpl(
        get<_i10.AuthRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factory<_i33.SubscribeForMessagesUseCase>(
      () => _i33.SubscribeForMessagesUseCaseImpl(
            get<_i12.ChatRepository>(),
            get<_i7.UserRepository>(),
          ));
  gh.factory<_i34.AddChatUseCase>(() => _i34.AddChatUseCaseImpl(
        get<_i12.ChatRepository>(),
        get<_i7.UserRepository>(),
      ));
  gh.factoryParam<_i35.ChatBloc, _i36.ChatEntity, dynamic>((
    _chat,
    _,
  ) =>
      _i35.ChatBloc(
        get<_i18.FetchMessagesUseCase>(),
        get<_i19.FetchProfileUserUseCase>(),
        _chat,
        get<_i26.SendTextMessagesUseCase>(),
        get<_i24.SendAudioMessagesUseCase>(),
        get<_i27.SendVideoMessagesUseCase>(),
        get<_i33.SubscribeForMessagesUseCase>(),
        get<_i21.MessageViewedUseCase>(),
        get<_i25.SendImageMessagesUseCase>(),
      ));
  gh.factory<_i37.ChatListBloc>(() => _i37.ChatListBloc(
        get<_i17.FetchChatsUseCase>(),
        get<_i33.SubscribeForMessagesUseCase>(),
        get<_i15.DeleteChatUseCase>(),
      ));
  gh.factory<_i38.LoginBloc>(() => _i38.LoginBloc(
        get<_i29.SignInUseCase>(),
        get<_i28.SignInGoogleUseCase>(),
      ));
  gh.factory<_i39.NewChatBloc>(() => _i39.NewChatBloc(
        get<_i20.FetchUsersUseCase>(),
        get<_i34.AddChatUseCase>(),
      ));
  gh.factory<_i40.ProfileBloc>(() => _i40.ProfileBloc(
        get<_i19.FetchProfileUserUseCase>(),
        get<_i30.SignOutUseCase>(),
      ));
  gh.factory<_i41.RegistrationBloc>(() => _i41.RegistrationBloc(
        get<_i32.SignUpUseCase>(),
        get<_i31.SignUpGoogleUseCase>(),
      ));
  return get;
}
