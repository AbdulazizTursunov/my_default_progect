import 'package:flutter/material.dart';

import '../../widget/global_text_field.dart';


class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        GlobalTextField(
            maxLine:1,
            hintText: "Name",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.start,
            controller:nameController),
        const SizedBox(height: 24),
        GlobalTextField(
            maxLine: 1,
            hintText: "email",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            textAlign: TextAlign.start,
            controller: emailController),
        const SizedBox(height: 24),

      ],
    );
  }
}
