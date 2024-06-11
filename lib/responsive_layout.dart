import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context) builder;

  ResponsiveLayout({required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return builder(context); // Large screen layout
        } else if (constraints.maxWidth >= 600) {
          return builder(context); // Medium screen layout
        } else {
          return builder(context); // Small screen layout
        }
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive Layout Demo'),
        ),
        body: ResponsiveLayout(
          builder: (context) {
            return Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: Center(child: Text('Header')),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: Colors.green,
                      child: Center(child: Text('Content')),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: Center(child: Text('Footer')),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() => runApp(MyApp());
