import 'package:collection/collection.dart';

enum Role {
  Aluno,
  Admin,
  Professor,
}

enum Weekdays {
  Seg,
  Ter,
  Qua,
  Qui,
  Sex,
  Sab,
  Dom,
}

enum Status {
  Ativo,
  Bloqueado,
}

enum DeviceQueueType {
  insert,
  update,
  delete,
}

enum QueueStatus {
  pending,
  error,
  success,
  processing,
}

enum WorkoutTypeFactor {
  low,
  medium,
  high,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Role):
      return Role.values.deserialize(value) as T?;
    case (Weekdays):
      return Weekdays.values.deserialize(value) as T?;
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (DeviceQueueType):
      return DeviceQueueType.values.deserialize(value) as T?;
    case (QueueStatus):
      return QueueStatus.values.deserialize(value) as T?;
    case (WorkoutTypeFactor):
      return WorkoutTypeFactor.values.deserialize(value) as T?;
    default:
      return null;
  }
}
