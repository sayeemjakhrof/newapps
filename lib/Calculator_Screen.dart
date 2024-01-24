import 'package:flutter/material.dart';

class calculatorScreen extends StatefulWidget {
  calculatorScreen({super.key});

  @override
  State<calculatorScreen> createState() => _calculatorScreenState();
}

class _calculatorScreenState extends State<calculatorScreen> {
  final TextEditingController _textFirstFormController =
      TextEditingController();
  final TextEditingController _textSecendFormController =
      TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  double total = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Calculator',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your value';
                    }
                    return null;
                  },
                  controller: _textFirstFormController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange, width: 1.5),
                      ),
                      focusColor: Colors.orange,
                      hintStyle: TextStyle(
                        color: Colors.red.shade300,
                        fontSize: 14,
                      ),
                      hintText: 'Field in the garp',
                      prefixIcon: const Icon(Icons.numbers),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your value';
                    }
                    return null;
                  },
                  controller: _textSecendFormController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 1.5)),
                      focusColor: Colors.orange,
                      hintStyle: TextStyle(
                        color: Colors.red.shade300,
                        fontSize: 14,
                      ),
                      hintText: 'Field in the garp',
                      prefixIcon: const Icon(Icons.numbers),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          double firstNum = double.parse(
                              _textFirstFormController.text.trim());
                          double secendNum = double.parse(
                              _textSecendFormController.text.trim());
                          total = firstNum + secendNum;
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.plus_one,
                      ),
                      label: Text('Enter Sum'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          double _lastName = double.parse(
                              _textFirstFormController.text.trim());
                          double _firstName = double.parse(
                              _textSecendFormController.text.trim());
                          total = _lastName - _firstName;
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.remove,
                      ),
                      label: Text('Enter Meunas'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                if(_key.currentState!.validate()){
                                  double _firstName = double.parse(_textFirstFormController.text.trim());
                                  double _twoName = double.parse(_textSecendFormController.text.trim());
                                  total = _firstName / _twoName;
                                  print(_twoName);
                                  print(_firstName);
                                  setState(() {
                                  });
                                }
                              },
                              icon: const Icon(Icons.view_module),
                              label: const Text('Divition'),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                if(_key.currentState!.validate()){
                                  double _firstName = double.parse(_textFirstFormController.text.trim());
                                  double _twoName = double.parse(_textSecendFormController.text.trim());
                                  total = _firstName * _twoName;
                                  setState(() {
                                  });
                                }
                              },
                              icon: const Icon(Icons.add),
                              label: const Text('Modulas'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  total.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
