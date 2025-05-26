import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  var selectedValue = 'Satu';
  final dropdownList = <String>['Satu', 'Dua', 'Tiga', 'Empat', 'Lima'];

  var isChecked = false;
  var sex = 'male';
  var isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page One & Form')),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: _globalKey,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nama',
                        hintText: 'Masukkan nama anda',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_globalKey.currentState?.validate() ?? false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form valid!')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form tidak valid!')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
                Switch(
                  value: isOn,
                  onChanged: (bool? val) {
                    if (val != null) {
                      setState(() {
                        isOn = val;
                      });
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'male',
                      groupValue: sex,
                      onChanged: (String? val) {
                        setState(() {
                          if (val != null) {
                            sex = val;
                          }
                        });
                      },
                    ),
                    const Text('male'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'female',
                      groupValue: sex,
                      onChanged: (String? val) {
                        setState(() {
                          if (val != null) {
                            sex = val;
                          }
                        });
                      },
                    ),
                    const Text('female'),
                  ],
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? val) {
                    if (val != null) {
                      setState(() {
                        isChecked = val;
                      });
                    }
                  },
                ),
                DropdownButton<String>(
                  value: selectedValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 40,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  items:
                      dropdownList.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
