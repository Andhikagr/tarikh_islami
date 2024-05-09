import 'package:flutter/material.dart';
import 'package:tarikh_islami/file/uts_page.dart';

class Uts extends StatefulWidget {
  const Uts({super.key});

  @override
  State<Uts> createState() => _UtsState();
}

class _UtsState extends State<Uts> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController cPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Password UTS',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Form(
            key: formKey,
            child: Center(
                child: SizedBox(
              width: 350,
              height: 200,
              child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.grey.shade300,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: cPass,
                        decoration: InputDecoration(
                            labelText: 'Kode',
                            hintText: 'Input Kode',
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            )),
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return 'Kode Masih Kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            String KeyPass = '12345';
                            if (formKey.currentState!.validate()) {
                              if (cPass.text == KeyPass) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UtsPage(),
                                    ),
                                    (route) => false);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Konfirmasi Login'),
                                        content: Text('Password masih salah'),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                cPass.text = '';
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Ok'))
                                        ],
                                      );
                                    });
                              }
                            }
                            ;
                          },
                          child: const Text('Login',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ))),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
