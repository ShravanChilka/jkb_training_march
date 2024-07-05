import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/show_snack_bar.dart';
import '../bloc/create_todo_bloc.dart';
import '../bloc/create_todo_event.dart';
import '../bloc/create_todo_state.dart';

class CreateTodoScreen extends StatefulWidget {
  const CreateTodoScreen({super.key});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateTodoBloc, CreateTodoState>(
      listener: (context, state) {
        if (state.status == CreateTodoStatus.completed) {
          Navigator.of(context).pop();
          showSnackbar('Todo created!');
        }
      },
      builder: (context, state) {
        return PopScope(
          canPop: state.status == CreateTodoStatus.loading ? false : true,
          child: Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: const Text('Create Todo'),
                ),
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      final title = titleController.text;
                      final description = descriptionController.text;
                      context.read<CreateTodoBloc>().add(
                            CreateTodoEventSave(
                              title: title,
                              description: description,
                            ),
                          );
                    }
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Create'),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: titleController,
                          style: Theme.of(context).textTheme.titleLarge,
                          decoration: const InputDecoration(
                            hintText: 'Enter title',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Title is required';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: descriptionController,
                          maxLines: 5,
                          style: Theme.of(context).textTheme.bodyLarge,
                          decoration: const InputDecoration(
                            hintText: 'Enter description',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (state.status == CreateTodoStatus.loading)
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  color: Colors.black54,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                      SizedBox(height: 16),
                      Material(
                        type: MaterialType.transparency,
                        child: Text('Creating Todo...'),
                      ),
                    ],
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
