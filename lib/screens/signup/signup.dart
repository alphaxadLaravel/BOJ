import 'package:boj/screens/home/home.dart';
import 'package:flutter/material.dart';
import '../../components/buttons.dart';
import '../../components/privacy_policy.dart';
import '../../components/terms.dart';
import '../../components/textfields.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  static String id = "/signup";
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool step1 = true;
  bool step2 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Form(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: size.height * 0.2,
                  ),
                  const Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "Kua wa kwanza kupata taarifa za dini!",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Column(
                    children: step1
                        ? [
                            TextInputs(
                                type: TextInputType.text,
                                hint: "Full name",
                                labelname: "Full name",
                                prefix: Icons.person,
                                onChanged: (value) {},
                                controller: fullname,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: ""),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextInputs(
                                type: TextInputType.emailAddress,
                                hint: "Email",
                                labelname: "Email",
                                prefix: Icons.email,
                                onChanged: (value) {},
                                controller: email,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: ""),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextInputs(
                                type: TextInputType.text,
                                hint: "Gender",
                                labelname: "Gender",
                                prefix: Icons.male,
                                onChanged: (value) {},
                                controller: fullname,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: ""),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Button(
                                text: "Next",
                                textColor: Colors.white,
                                backgroundColor: Colors.lightBlueAccent,
                                onPressed: () {
                                  setState(() {
                                    step1 = false;
                                    step2 = true;
                                  });
                                }),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: const [
                            //       Text(
                            //         "Step ",
                            //         style: TextStyle(fontSize: 13),
                            //       ),
                            //       Text(
                            //         "1 / 2",
                            //         style: TextStyle(
                            //             fontSize: 13, color: Colors.red),
                            //       ),
                            //     ])
                          ]
                        : [
                            TextInputs(
                                type: TextInputType.text,
                                hint: "Country",
                                labelname: "Country",
                                prefix: Icons.map_sharp,
                                onChanged: (value) {},
                                controller: country,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: ""),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextInputs(
                                type: TextInputType.text,
                                hint: "City",
                                labelname: "City",
                                prefix: Icons.location_city,
                                onChanged: (value) {},
                                controller: city,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: ""),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            TextInputs(
                                type: TextInputType.phone,
                                hint: "Phone Number",
                                labelname: "Phone number",
                                prefix: Icons.phone,
                                onChanged: (value) {},
                                controller: phone,
                                validate: (value) {
                                  return null;
                                },
                                prefixWord: "+255"),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'On register, you agree to ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                                InkWell(
                                  child: const Text("terms ",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.lightBlueAccent,
                                          decoration:
                                              TextDecoration.underline)),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TermsAndCondtion()));
                                  },
                                ),
                                const Text(
                                  ' & ',
                                ),
                                InkWell(
                                  child: const Text("privacy policy",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.lightBlueAccent,
                                          decoration:
                                              TextDecoration.underline)),
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PrivacyPolicy()));
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Button(
                                text: "Finish",
                                textColor: Colors.white,
                                backgroundColor: Colors.lightBlueAccent,
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BOJHome()));
                                }),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: const [
                            //       Text(
                            //         "Step ",
                            //         style: TextStyle(fontSize: 13),
                            //       ),
                            //       Text(
                            //         "2 / 2",
                            //         style: TextStyle(
                            //             fontSize: 13, color: Colors.red),
                            //       ),
                            //     ])
                          ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
