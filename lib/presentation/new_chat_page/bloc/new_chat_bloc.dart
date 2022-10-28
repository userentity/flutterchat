import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/use_cases/chat/add_chat_use_case.dart';
import '../../../domain/use_cases/user/fetch_users_use_case.dart';
import 'new_chat_event.dart';
import 'new_chat_state.dart';

@injectable
class NewChatBloc extends Bloc<NewChatEvent, NewChatState> {
  NewChatBloc(this._fetchUsersUseCase, this._addChatUseCase)
      : super(const NewChatInitial()) {
    on<NewChatFetched>((event, emit) => _onNewChatFetched(event, emit));

    on<NewChatChose>((event, emit) => _onNewChatChose(event, emit));

    add(const NewChatFetched());
  }

  final FetchUsersUseCase _fetchUsersUseCase;

  final AddChatUseCase _addChatUseCase;

  Future<void> _onNewChatFetched(
      NewChatFetched event, Emitter<NewChatState> emit) async {
    emit(const NewChatLoading());
    List<UserEntity> users =
        await _fetchUsersUseCase(FetchUsersArgs(search: event.search));
    emit(NewChatLoadSuccess(users));
  }

  Future<void> _onNewChatChose(
      NewChatChose event, Emitter<NewChatState> emit) async {
    emit(const NewChatLoading());
    final chat = await _addChatUseCase(AddChatArgs(event.user));
    emit(NewChatDone(chat));
  }
}
