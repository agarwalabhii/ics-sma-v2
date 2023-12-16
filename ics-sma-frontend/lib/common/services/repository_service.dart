mixin RepositoryService<T> {
  Future<int> createItem(T item);
  Future<List<T>> getItems();
  Future<T> getItemById(int id);
  Future<void> deleteItem(int id);
}
