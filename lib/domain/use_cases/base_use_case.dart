abstract class BaseUseCase<TResult, TArgs> {
  TResult call(TArgs args);
}
