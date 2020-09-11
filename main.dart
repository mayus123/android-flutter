import 'package:flutter/material.dart';
import 'telepon_terakhir.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Kontak",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Contact App");

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
        home: DefaultTabController (
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),

//              actions: <Widget>[
//                IconButton(
//                  onPressed: () {
//                    setState(() {
//                      if(this.cusIcon.icon == Icons.search) {
//                        this.cusIcon = Icon(Icons.cancel);
//                        this.cusSearchBar = TextField(
//                            textInputAction: TextInputAction.go,
//                            decoration: InputDecoration(
//                              border: InputBorder.none,
//                              hintText: "Telusuri Kontak",
//                            ),
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 16.0,
//                            )
//                        );
//                      } else {
//                        this.cusIcon = Icon(Icons.search);
//                        this.cusSearchBar = Text("Contact App");
//                      }
//                    });
//                  },
//                  icon: cusIcon,
//                ),
//                IconButton(
//                  onPressed: () {},
//                  icon: Icon(Icons.more_vert),
//                ),
//              ],

              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.star),
                  ),
                  Tab(
                    icon: Icon(Icons.access_time),
                  ),
                  Tab(
                    icon: Icon(Icons.account_circle),
                  ),
                ],
              ),
              title: Text('Kontak Saya'),
            ),

            body: TabBarView(
              children: [
                TeleponFavorit(),
                TeleponTerakhit(),
                KontakSaya(),
              ],
            ),

          ),
        )
    );
  }
}

class TeleponFavorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.grey, size:55.0),
                Icon(Icons.call, color: Colors.grey, size:120.0),
                Icon(Icons.access_time, color: Colors.grey, size:55.0),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text("Daftar panggilan cepat masih kosong", style: TextStyle(color: Colors.grey),),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: InkWell(
              child: Text("TAMBAHKAN FAVORIT", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold), ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KontakSaya(),),
                  );
                }
            ),
          ),
        ],
      )

    );
  }
}

class TeleponTerakhit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}



// Kontak Saya
class KontakSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            ListTile(
              title: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_call),
                          Text(" Tambah Kontak Baru"),
                        ]
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewContactAdd(),),);
              },
            ),
            ListTile(
              title: Text("Abi"),
              subtitle: Text("+62 123-4567-8900 "),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage("https://f0.pngfuel.com/png/304/305/man-with-formal-suit-illustration-png-clip-art.png"),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AbiContact(),),);
              },
            ),
            ListTile(
              title: Text("Umi"),
              subtitle: Text("+62 123-4567-8900 "),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage("https://img.freepik.com/free-vector/arabian-women-avatar_7814-352.jpg?size=338&ext=jpg"),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UmiContact(),),);
              },
            ),
            ListTile(
              title: Text("Abang"),
              subtitle: Text("+62 123-4567-8900 "),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/cook-avatar-icon-profession-logo-male-character-a-man-in-professional-vector-id1126790966"),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AbangContact(),),);
              },
            ),
          ]
      ),
    );
  }
}

class MyNewContactAdd extends StatefulWidget {
  @override
  _MyNewContactAdd createState() => _MyNewContactAdd();
}

class _MyNewContactAdd extends State<MyNewContactAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tambah Kontak Baru"),
        ),
        body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  child: Text("SIMPAN", style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 500,
                child: Column(children: [
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Nama Depan",
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Nama Belakang",
                    ),
                  ),

                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 500,
                child: Column(children: [
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Telepon",
                      icon: Icon(Icons.call),
                    ),
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Seluler",
                    ),
                  ),

                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 500,
                child: Column(children: [
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Email",
                      icon: Icon(Icons.email),
                    ),
                  ),
                  TextField(
                    decoration: new InputDecoration(
                      labelText: "Rumah",
                    ),
                  ),

                ]),
              ),
            ])
    );
  }
}

class AbiContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abi'),
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent
            ),
            child: Column(children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50.0,
                backgroundImage: NetworkImage("https://f0.pngfuel.com/png/304/305/man-with-formal-suit-illustration-png-clip-art.png"),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Abi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
              )
            ])
        ),

        Container(
            height: 320,
            alignment: Alignment.center,
            decoration: BoxDecoration(

            ),
            child: ListView(children: [
              ListTile(
                title: Text("+62 123-4567-8900"),
                subtitle: Text("Seluler"),
                trailing: Icon(Icons.call),
                onTap: () {
                  print("Sedang Memanggil");
                },
              ),
              ListTile(
                title: Text("Panggilan suara +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Suara WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Panggilan video +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Video WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Voice Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Voice Call Telegram is Processing");
                },
                dense: true,

              ),
              ListTile(
                title: Text("Video Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Video Call Telegram is Processing");
                },
                dense: true,

              ),

            ])
        ),

      ],),
    );
  }
}

class UmiContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Umi'),
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent
            ),
            child: Column(children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50.0,
                backgroundImage: NetworkImage("https://img.freepik.com/free-vector/arabian-women-avatar_7814-352.jpg?size=338&ext=jpg"),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Umi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,))
              )
            ])
        ),

        Container(
            height: 320,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            ),
            child: ListView(children: [
              ListTile(
                title: Text("+62 123-4567-8900"),
                subtitle: Text("Seluler"),
                trailing: Icon(Icons.call),
                onTap: () {
                  print("Sedang Memanggil");
                },
              ),
              ListTile(
                title: Text("Panggilan suara +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Suara WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Panggilan video +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Video WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Voice Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Voice Call Telegram is Processing");
                },
                dense: true,

              ),
              ListTile(
                title: Text("Video Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Video Call Telegram is Processing");
                },
                dense: true,

              ),

            ])
        ),

      ],),
    );
  }
}

class AbangContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abang'),
      ),
      body: Column(children: [
        Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent
            ),
            child: Column(children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 50.0,
                backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/cook-avatar-icon-profession-logo-male-character-a-man-in-professional-vector-id1126790966"),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Abang', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
              )
            ])
        ),

        Container(
            height: 320,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            ),
            child: ListView(children: [
              ListTile(
                title: Text("+62 123-4567-8900"),
                subtitle: Text("Seluler"),
                trailing: Icon(Icons.call),
                onTap: () {
                  print("Sedang Memanggil");
                },
              ),
              ListTile(
                title: Text("Panggilan suara +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Suara WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Panggilan video +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/392/535/png-transparent-whats-app-application-whatsapp-logo-computer-icons-whatsapp-cdr-text-mobile-phones.png"),
                ),
                onTap: () {
                  print("Pindah Ke Panggilan Video WhatsApp");
                },
                dense: true,
              ),
              ListTile(
                title: Text("Voice Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Voice Call Telegram is Processing");
                },
                dense: true,

              ),
              ListTile(
                title: Text("Video Call +62 123-4567-8900"),
                trailing: CircleAvatar(
                  backgroundColor: Colors.green,
                  backgroundImage: NetworkImage("https://img1.pngdownload.id/20180626/tgx/kisspng-telegram-logo-telegram-5b31e22c0ea317.71543927152999582006.jpg"),
                ),
                onTap: () {
                  print("Video Call Telegram is Processing");
                },
                dense: true,

              ),

            ])
        ),

      ],),
    );
  }
}







