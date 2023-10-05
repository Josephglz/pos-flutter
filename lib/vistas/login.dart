import 'package:flutter/material.dart';
import 'package:puntodeventa/vistas/inicio.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _Login();
}

class _Login extends State<LoginScreen> {
  var user = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 130,
                  height: 130,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black87,
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      color: Colors.black38,
                    ),
                    textInputAction: TextInputAction.next,
                    autofocus: false,
                    controller: user,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Usuario',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      labelText: 'Usuario',
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Gabarito',
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      color: Colors.black38,
                    ),
                    textInputAction: TextInputAction.done,
                    autofocus: false,
                    obscureText: true,
                    controller: pass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Contraseña',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                      labelText: 'Contraseña',
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (user.text == 'admin' && pass.text == 'admin') {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const InicioScreen(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Acceder',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Gabarito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
