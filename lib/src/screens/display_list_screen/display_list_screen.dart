import 'package:flutter/material.dart';
import 'package:rocket_lab_technical/src/api/json_placeholder_api.dart';

import '../../models/todo.dart';

class DisplayListScreen extends StatefulWidget {
  const DisplayListScreen({super.key});

  static const routeName = '/display_list';

  @override
  State<DisplayListScreen> createState() => _DisplayListScreenState();
}

class _DisplayListScreenState extends State<DisplayListScreen> {
  late Future<Todo> futureTodo;
  late Future<List<Todo>> futureTodos;

  @override
  void initState() {
    super.initState();
    futureTodo = fetchTodo();
    futureTodos = fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeText = theme.textTheme;
    final themeColors = theme.colorScheme;
  
    final titleStyle = themeText.displaySmall!.copyWith(
      color: themeColors.primary,
    );

    return Scaffold(
      backgroundColor: themeColors.primary,
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            elevation: 50,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 500,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Display List', style: titleStyle)
                      ],
                    ),
                    const SizedBox(height: 10),
                    FutureBuilder(
                      future: futureTodos,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                ...(snapshot.data!).map((todo) {
                                  return SizedBox(height: 20, child: Text('- ${todo.title}'));
                                })
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        } else if (snapshot.connectionState == ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        }
                
                        return const Text('No data');
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
