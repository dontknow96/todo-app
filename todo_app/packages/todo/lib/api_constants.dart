class ApiConstants {
  static String baseUrl = const String.fromEnvironment('TODO_API_URL',
      defaultValue: '127.0.0.1:8080'); //default is emulator localhost relay

  //list endpoints
  static const allLists = 'list/all';
  static const createList = 'list/new';
  static const deleteList = 'list/';
  static const getList = 'list/';

  //item endpoints
  static const createItem = 'item/new';
  static const editItem = 'item/';
  static const deleteItem = 'item/';

  //comment endpoints
  static const createComment = 'comment/new';
  static const deleteComment = 'comment/';

  //permission endpoints
  static const createPermission = 'permission';
  static const deletePermission = 'permission';
}
