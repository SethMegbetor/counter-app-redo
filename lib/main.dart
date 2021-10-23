import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool _reversed = false;

  List<UniqueKey> _buttonkeys = [UniqueKey(), UniqueKey()];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 50.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.50),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                'images/logo.png',
                width: 300,
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(15)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 15))),
                    child: const Text('Increment counter'),
                    onPressed: _incrementCounter,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: const Text('Decrement counter'),
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 15, color: Colors.black)),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(15)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Reset Counter',
        child: const Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//
// class FancyButton extends StatefulWidget {
//   final VoidCallback onPresssed;
//   final Widget child;
//
//
//   const FancyButton({Key? key, required this.onPresssed, required this.child}) : super(key: key);
//
//   @override
//   _FancyButtonState createState() => _FancyButtonState();
// }
//
// class _FancyButtonState extends State<FancyButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(
//         color: _getColors(),
//         child: widget.child,
//         onPressed: widget.onPresssed,
//       ),
//     );
//   }
//   Color _getColors(){
//     return _buttonColors.putIfAbsent(this, () => colors[next(0,5)]);
//   }
// }
//
// Map<_FancyButtonState, Color> _buttonColors = ();
// final _random = Random();
// int next(int min, int masx) => min + _random.nextInt(max - min);
// List<Color> colors = [
//   Colors.blue,
//   Colors.green,
//   Colors.orange,
//   Colors.purple,
//   Colors.amber,
//   Colors.lightBlue,
// ];
