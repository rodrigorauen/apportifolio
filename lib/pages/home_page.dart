import 'package:apportifolio/pages/jobs_pages.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flip = true;
  bool dark = true;
  void launchWhatsApp({
    @required String? phone,
    @required String? message,
  }) async {
    String url() {
      return ("https://api.whatsapp.com/send?phone=554999418518&text=Ol%C3%A1!");
    }

    print(url());
    launch("https://api.whatsapp.com/send?phone=554999418518&text=Ol%C3%A1!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Rodrigo\'s Portfolio'),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          Container(
            color: Colors.deepOrange,
            height: 80,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Text(
                  'Olá!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                )),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => JobsPage(),
                  ));
            },
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            leading: Icon(Icons.work_outline),
            title: Text(
              'Portifólio',
              style: TextStyle(fontSize: 18),
            ),
            selectedTileColor: Colors.amber,
          ),
// Redes
          Container(
            color: Colors.amber,
            child: Text(
              'Redes',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
// LinkedIn
          ListTile(
            onTap: () => launch(
                'https://www.linkedin.com/in/rodrigo-de-andrade-rauen-02687a20b/'),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            leading: Icon(Ionicons.logo_linkedin),
            title: Text(
              'LinkedIn',
              style: TextStyle(fontSize: 18),
            ),
            selectedTileColor: Colors.amber,
          ),
//Instagram
          ListTile(
            onTap: () => launch('https://www.instagram.com/rodrigorauen/'),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            leading: Icon(Ionicons.logo_instagram),
            title: Text(
              'Instagram',
              style: TextStyle(fontSize: 18),
            ),
            selectedTileColor: Colors.amber,
          ),
// Github
          ListTile(
            onTap: () => launch('https://github.com/rodrigorauen'),
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            leading: Icon(Ionicons.logo_github),
            title: Text(
              'Github',
              style: TextStyle(fontSize: 18),
            ),
            selectedTileColor: Colors.amber,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            leading: Icon(Ionicons.settings_outline),
            title: Text(
              'Opções',
              style: TextStyle(fontSize: 18),
            ),
            selectedTileColor: Colors.amber,
          ),
        ],
      )),
// Body
      body: flip
          ? ListView(
              children: [
                Center(
                    child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Quem sou?',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: 250,
                    height: 250,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('lib/assets/images/perfil.jpeg'),
                    ),
                  ),
                ),
// Apresentação
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                          child: Text(
                        'Rodrigo de Andrade Rauen \nIdade: 26, \nGraduação: Especialista \nem Gastronomia e \ncozinha autoral. ',
                        style: TextStyle(
                            fontSize: 30, color: Colors.amber.shade700),
                        textAlign: TextAlign.center,
                      )),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          flip = !flip;
                        },
                      );
                    },
                    child: Text(
                      'Habilidades',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber.shade600),
                    ),
                  ),
                )
              ],
            )
          : ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/HTML.png'),
                      ),
                    ),
                    Text(
                      'HTML',
                      style: TextStyle(color: Colors.cyan),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/CSS.jpg'),
                      ),
                    ),
                    Text(
                      'CSS',
                      style: TextStyle(color: Colors.cyan),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/React.png'),
                      ),
                    ),
                    Text(
                      'React',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/Flutter.png'),
                      ),
                    ),
                    Text(
                      'Flutter',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/Firebase.png'),
                      ),
                    ),
                    Text(
                      'Firebase',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/Github.jpg'),
                      ),
                    ),
                    Text(
                      'Github',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('lib/assets/images/English.jpg'),
                      ),
                    ),
                    Text(
                      'Inglês Fluente',
                      style: TextStyle(color: Colors.cyan),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                      child: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              flip = !flip;
                            },
                          );
                        },
                        child: Text(
                          'Perfil',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber.shade600),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => launchWhatsApp(phone: '554999418518', message: 'Olá!'),
        child: Icon(Ionicons.logo_whatsapp),
      ),
    );
  }
}
