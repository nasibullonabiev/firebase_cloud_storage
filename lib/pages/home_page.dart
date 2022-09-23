import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../services/storage_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Storage'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles(
                  allowMultiple: false,
                  type: FileType.custom,
                  allowedExtensions: ['png', 'jpg'],
                );
                if (result == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("NO file selected")));
                  return null;
                }
                final path = result.files.single.path!;
                final fileName = result.files.single.name;

                storage
                    .uploadFile(path, fileName)
                    .then((value) => print("Done"));
              },
              child: Text("Upload File"),
            ),
          ),
          FutureBuilder(
              future: storage.listFiles(),
              builder:
                  (BuildContext context, AsyncSnapshot<ListResult> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.items.length,
                        itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text(snapshot.data!.items[index].name),
                        ),
                      );
                    }
                    ),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Container();
              }),
          FutureBuilder(
              future: storage.downloadUrl('dima-panyukov-848A_yCw_aE-unsplash.jpg'),
              builder:
                  (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Container(
                    height: 300,
                    width: 300,

                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.network(snapshot.data!)
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Container();
              })
        ],
      ),
    );
  }
}
