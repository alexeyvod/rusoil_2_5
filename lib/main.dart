import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Кейс 2.5',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Кейс 2.5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class User{
  String Name = '';
  String Phone = '';

  User(String Name, String Phone) {
    this.Name = Name;
    this.Phone = Phone;
  }
}

List<User> users = [];


class UserItem2 extends StatefulWidget {
  UserItem2({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _UserItem2State createState() => _UserItem2State();
}

class _UserItem2State extends State<UserItem2> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: ListTile(
          title: Text(widget.user.Name),
          subtitle: Text(widget.user.Phone),
          tileColor: isSelected ? Colors.indigo : Colors.white,
          textColor: isSelected ? Colors.white : Colors.black87,
          onTap: (){
            setState(() {
              isSelected = !isSelected;
            });
          }
      ),
    );
  }
}






class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    users = [];
    users.add(User('Полиграф Полиграфович','8-901-111-222-333'));
    users.add(User('Вася','8-901-111-222-333'));
    users.add(User('Петя','8-901-111-222-333'));
    users.add(User('Коля','8-901-111-222-333'));
    users.add(User('Маша','8-901-111-222-333'));
    users.add(User('Анастасия Петровна','8-901-111-222-333'));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return UserItem2(user: users[index]);
            },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
