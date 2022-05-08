import 'package:flutter/material.dart';

class TextInputs extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String labelname;
  final IconData prefix;
  final String prefixWord;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FormFieldValidator validate;
  const TextInputs(
      {Key? key,
      required this.type,
      required this.hint,
      required this.labelname,
      required this.prefix,
      required this.onChanged,
      required this.controller,
      required this.validate,
      required this.prefixWord})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height * 0.065,
      child: TextFormField(
        keyboardType: type,
        onChanged: onChanged,
        controller: TextEditingController(),
        validator: validate,
        decoration: InputDecoration(
            hintText: hint,
            labelText: labelname,
            prefix: Text(prefixWord),
            border: inputBorder(),
            focusedBorder: focusedInputBorder(),
            focusedErrorBorder: focusedErrorBorder(),
            errorBorder: errorInputBorder(),
            prefixIcon: Icon(prefix)),
      ),
    );
  }
}

OutlineInputBorder focusedErrorBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
    borderSide: BorderSide(color: Colors.lightBlueAccent),
  );
}

OutlineInputBorder focusedInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
    borderSide: BorderSide(color: Colors.lightBlueAccent),
  );
}

OutlineInputBorder errorInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
    borderSide: BorderSide(color: Colors.red),
  );
}

OutlineInputBorder inputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(6),
    ),
    borderSide: BorderSide(color: Colors.black26),
  );
}
