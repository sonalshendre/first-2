import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  bool pass = false;
  String error = '';

  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  String email = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.email),
              Icon(Icons.email),
              Icon(Icons.email),
              Icon(Icons.email),
              Icon(Icons.email),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Text('Setting'),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_open),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          actions: [
            Icon(Icons.settings),
            Icon(Icons.notifications),
          ],
          centerTitle: true,
          title: Text('First Page'),
          bottom: PreferredSize(
            child: Container(
              height: 50,
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings),
                  Icon(Icons.notifications),
                  Icon(Icons.settings),
                  Icon(Icons.notifications),
                ],
              ),
            ),
            preferredSize: Size(0, 50),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: key,
              child: ListView(
                children: [
                  TextFormField(
                    controller: emailController,
                    validator: (val) {
                      return val!.isEmpty ? 'Please Enter valid email' : null;
                    },
                    // textAlign: TextAlign.right,
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontSize: 20.0,
                    // ),
                    onChanged: (val) {
                      // setState(() {
                      //   error = val.isEmpty ? 'Please Enter valid email' : '';
                      // });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      errorText: error,
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.black26,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                            pass ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                    ),
                    obscureText: pass,
                    // cursorRadius: Radius.circular(5.0),
                    // cursorWidth: 20.0,
                    // readOnly: true,
                  ),
                  TextFormField(
                    controller: passController,
                    maxLength: 10,
                    maxLines: 5,
                    validator: (val) {
                      return val!.length < 10
                          ? 'Please Enter valid Contact Number'
                          : null;
                    },
                    // textAlign: TextAlign.right,
                    // style: TextStyle(
                    //   color: Colors.blue,
                    //   fontSize: 20.0,
                    // ),
                    onChanged: (val) {
                      // setState(() {
                      //   error = val.isEmpty ? 'Please Enter valid email' : '';
                      // });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      errorText: error,
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.black26,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                            pass ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                      ),
                    ),
                    obscureText: pass,
                    // cursorRadius: Radius.circular(5.0),
                    // cursorWidth: 20.0,
                    // readOnly: true,
                  ),
                  MaterialButton(
                    color: Colors.green,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('DatePicker'),
                    onPressed: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2023),
                        initialDate: DateTime.now(),
                      );

                      String selectedDate = date!.day.toString() +
                          '/' +
                          date.month.toString() +
                          '/' +
                          date.year.toString();
                      print(selectedDate.toString());
                    },
                  ),
                  MaterialButton(
                    color: Colors.green,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('TimePicker'),
                    onPressed: () async {
                      TimeOfDay? time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      String amPm = time!.periodOffset == 0 ? 'AM' : 'PM';
                      int hour = amPm == 'PM' ? time.hour - 12 : time.hour;

                      String selectedTime = hour.toString() +
                          ' : ' +
                          time.minute.toString() +
                          ' ' +
                          amPm;

                      print(selectedTime.toString());
                    },
                  ),
                  MaterialButton(
                    color: Colors.green,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('SUBMIT'),
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => SecondPage(),
                      //   ),
                      // );

                      if (key.currentState!.validate())
                        Navigator.pushNamed(
                          context,
                          'second',
                          arguments: {
                            'email': emailController.text,
                            'pass': passController.text,
                          },
                        );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SecondPage(
                      //       email: emailController.text,
                      //       pass: passController.text,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 40, color: Colors.deepPurple),
                  ),
                  BackButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        {
                          'email': emailController.text,
                          'pass': passController.text,
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget item = Row(
//   children: [
//     CircleAvatar(radius: 25),
//     Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Person Name'),
//             Text('Last Chat'),
//           ],
//         ),
//       ),
//     ),
//     IconButton(
//       onPressed: () {},
//       icon: Icon(Icons.arrow_right_alt_rounded),
//     ),
//   ],
// );
