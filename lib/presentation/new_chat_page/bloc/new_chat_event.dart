import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';

part 'new_chat_event.freezed.dart';

@freezed
class NewChatEvent with _$NewChatEvent {
  const factory NewChatEvent.fetched({String? search}) = NewChatFetched;
  const factory NewChatEvent.chose(UserEntity user) = NewChatChose;
}
