import 'package:flutter/material.dart';

class EnableLocalAuthModalBottomSheet extends StatelessWidget {

  final void Function() action;

  const EnableLocalAuthModalBottomSheet({Key? key, required this.action}) : super(key: key);

  static const Color primaryColor = Color(0xFF13B5A2);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.fingerprint_outlined, size: 100, color: primaryColor,),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Do you want to enable fingerprint login?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
              'The next time you log in, you will not be prompted for your login credentials.',
              textAlign: TextAlign.center),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: const Text("Yes, cool!"),
            onPressed: () {
              action();
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                primary: primaryColor,
                textStyle: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            child: const Text("No, thanks!", style: TextStyle(color: Colors.black54),),
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.grey[200],
                textStyle: const TextStyle(
                    fontSize: 18),)
          )
        ],
      ),
    );
  }
}
