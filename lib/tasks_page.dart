import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final List<bool> _isChecked = [false, false, false, false];

  void _toggleCheckbox(int index) {
    setState(() {
      _isChecked[index] = !_isChecked[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do Tasks'),
        backgroundColor: const Color.fromARGB(255, 139, 33, 33),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTaskCard(
              title: 'EXAMEN',
              description: 'Examen de Programacion Movil',
              isChecked: _isChecked[0],
              onChecked: () => _toggleCheckbox(0),
            ),
            _buildTaskCard(
              title: 'Tarea 1',
              description: 'Elabora una calculadoar',
              isChecked: _isChecked[1],
              onChecked: () => _toggleCheckbox(1),
            ),
            _buildTaskCard(
              title: 'Foro',
              description: 'Trabaja en el foro y dicute tu opinion acerca de las IAs',
              isChecked: _isChecked[2],
              onChecked: () => _toggleCheckbox(2),
            ),
            _buildTaskCard(
              title: 'Task 2',
              description: 'Elabora un Log in',
              isChecked: _isChecked[3],
              onChecked: () => _toggleCheckbox(3),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskCard({
    required String title,
    required String description,
    required bool isChecked,
    required VoidCallback onChecked,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(description),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: onChecked,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isChecked ? Colors.green : Colors.transparent,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: isChecked
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 16,
                        )
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
