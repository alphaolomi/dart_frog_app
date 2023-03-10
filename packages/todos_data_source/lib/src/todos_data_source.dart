// /// {@template todos_data_source}
// /// A generic interface for managing todos.
// /// {@endtemplate}
// class TodosDataSource {
//   /// {@macro todos_data_source}
//   const TodosDataSource();
// }


import 'package:todos_data_source/todos_data_source.dart';

/// An interface for a todos data source.
/// A todos data source supports basic C.R.U.D operations.
/// * C - Create
/// * R - Read
/// * U - Update
/// * D - Delete
abstract class TodosDataSource {
  /// TODO(alphaolomi): Create and return the newly created todo, https://github.com/flutter/samples/issues/632
  Future<Todo> create(Todo todo);

  /// Return all todos.
  Future<List<Todo>> readAll();

  /// Return a todo with the provided [id] if one exists.
  Future<Todo?> read(String id);

  /// Update the todo with the provided [id] to match [todo] and
  /// return the updated todo.
  Future<Todo> update(String id, Todo todo);

  /// Delete the todo with the provided [id] if one exists.
  Future<void> delete(String id);
}