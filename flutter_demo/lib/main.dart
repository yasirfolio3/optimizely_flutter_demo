import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:optimizely/client.dart';
import 'package:optimizely/factory.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<OptimizelyExperiment> _experiments = List<OptimizelyExperiment>();

  Future<List<OptimizelyExperiment>>
      fetchExperimentsFromOptimizelyConfig() async {
    String data = await rootBundle.loadString('assets/100_entities.json');
    OptimizelyFactory factory = OptimizelyFactory(data);
    OptimizelyClient client = factory.client();
    OptimizelyConfig optimizelyConfig = client.getOptimizelyConfig();

    List<OptimizelyExperiment> experiments = [];
    optimizelyConfig.experimentsMap.forEach((key, value) {
      experiments.add(value);
    });
    return experiments;
  }

  @override
  void initState() {
    fetchExperimentsFromOptimizelyConfig().then((value) {
      setState(() {
        _experiments.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Experiments list'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'key: ' + _experiments[index].key,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'id: ' + _experiments[index].id,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: _experiments.length,
        ));
  }
}
