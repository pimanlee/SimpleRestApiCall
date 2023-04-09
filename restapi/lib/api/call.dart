// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
    required this.users,
  });

  final List users;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  String namba = '';
  @override
  //results variable act as index from json
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: widget.users.length,
        itemBuilder: (context, index) {
          final result = widget.users[index];
          final first = result['name']['first'];
          final last = result['name']['last'];
          final city = result['location']['city'];
          final country = result['location']['country'];
          final image = result['picture']['thumbnail'];
          final gender = result['gender'];
          return ListTile(
            onTap: () {
              Scaffold.of(context).showBottomSheet(
                (BuildContext context) => Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: MediaQuery.of(context).size.height * .50,
                  color: Colors.redAccent,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      gender,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
            subtitle: Text(
              '$city: $country',
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(image),
            ),
            title: Text(
              '$first $last'.toString(),
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          );
        },
      ),
    );
  }
}
