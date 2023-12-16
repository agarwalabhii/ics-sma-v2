abstract class FetchDecorator<D, R> {
  D apply(R remote);
  Function(int count) get updateFunc;
}