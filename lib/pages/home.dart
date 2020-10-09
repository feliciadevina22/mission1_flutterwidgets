import 'package:flutter/material.dart';
import 'package:mission1_flutterwidgets/icon/totoro_icons.dart';

Color isOn = Colors.grey;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mission 1",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.teal,
      ),
      body: Stack(children: [
        //Background
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 1],
              colors: <Color>[Colors.white, Colors.teal],
            ),
          ),
        ),
        //Gambar, text, dkk
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Logo teratas
            Flexible(
              flex: 2,
              child: Container(
                child: Image(image: AssetImage('images/Logo.png')),
              ),
            ),
            //Gambar - gambar mini
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/0e/61/0d/0e610ddf3a5df1d7b7a69f9f61e01401.gif')),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(image: AssetImage('images/food.gif')))),
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                          image: NetworkImage(
                              'https://pa1.narvii.com/5913/cc0efee95f3f1017b305c9a410108a7aa2f3bc45_00.gif')),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                          image: AssetImage('images/howl_moving_castle.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            //Judul text
            Flexible(
              flex: 1,
              child: Container(
                child: Text(
                  "History of Studio Ghilbi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //List view dari text
            Flexible(
              flex: 6,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ListView(
                    children: [
                      Text(
                        "         Studio Ghibli Inc. (Japanese: 株式会社スタジオジブリ, Hepburn: Kabushiki-gaisha Sutajio Jiburi) is a Japanese animation film studio headquartered in Koganei, Tokyo. The studio is best known for its animated feature films, and has also produced several short films, television commercials, and one television film. It was founded on June 15, 1985 by directors Hayao Miyazaki and Isao Takahata and producer Toshio Suzuki, after the success of Topcraft's anime film Nausicaä of the Valley of the Wind (1984). Studio Ghibli has also collaborated with video game studios on the visual development of several video games.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         Founded on June 15, 1985, the studio was headed by directors Hayao Miyazaki and Isao Takahata and producer Toshio Suzuki. Prior to the formation of the studio, Miyazaki and Takahata had already had long careers in Japanese film and television animation and had worked together on The Great Adventure of Horus, Prince of the Sun in 1968 and the Panda! Go, Panda! films in 1972 and 1973, and in 1978, Suzuki became an editor at Tokuma Shoten's Animage manga magazine, where the first film he chose was Horus. A year after his phone call with Takahata and his first encounter with Miyazaki, both about Horus, he made a phone call about the first film Miyazaki ever directed: The Castle of Cagliostro.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         The studio was founded after the success of the 1984 film Nausicaä of the Valley of the Wind, written and directed by Miyazaki for Topcraft and distributed by Toei Company. The origins of the film lie in the first two volumes of a serialized manga written by Miyazaki for publication in Animage as a way of generating interest in an anime version. Suzuki was part of the production team on the film and founded Studio Ghibli with Miyazaki, who also invited Takahata to join the new studio.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         The studio has mainly produced films by Miyazaki, with the second most prolific director being Takahata (most notably with Grave of the Fireflies). Other directors who have worked with Studio Ghibli include Yoshifumi Kondō, Hiroyuki Morita, Gorō Miyazaki, and Hiromasa Yonebayashi. Composer Joe Hisaishi has provided the soundtracks for most of Miyazaki's Studio Ghibli films. In their book Anime Classics Zettai!, Brian Camp and Julie Davis made note of Michiyo Yasuda as \"a mainstay of Studio Ghibli’s extraordinary design and production team\". At one time the studio was based in Kichijōji, Musashino, Tokyo.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         In August 1996, The Walt Disney Company and Tokuma Shoten formed a partnership in which Buena Vista Pictures would be the sole international distributor for Tokuma Shoten's Studio Ghibli animated films. Since then, all three aforementioned films by Miyazaki at Studio Ghibli that were previously dubbed by Streamline Pictures have been re-dubbed by Disney. On June 1, 1997, Tokuma Shoten Publishing consolidated its media operations by merging Studio Ghibli, Tokuma Shoten Intermedia software and Tokuma International under one location.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         On August 3, 2014, Toshio Suzuki announced that Studio Ghibli would take a \"brief pause\" to re-evaluate and restructure in the wake of Miyazaki's retirement. He stated some concerns about where the company would go in the future. This led to speculation that Studio Ghibli will never produce another feature film again. On November 7, 2014, Miyazaki stated, \"That was not my intention, though. All I did was announce that I would be retiring and not making any more features.\" Lead producer Yoshiaki Nishimura among several other staffers from Ghibli, such as director Hiromasa Yonebayashi, left to found Studio Ponoc in April 2015, working on the film Mary and the Witch's Flower.\n",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         On November 28, 2017, Koji Hoshino stepped down as president; he was replaced by Kiyofumi Nakajima (former Ghibli Museum director). Hoshino was then appointed as Chairman of Studio Ghibli.",
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "         In May 2020, Toshio Suzuki confirmed that a new film from Gorō Miyazaki is in development at Studio Ghibli. On June 3, 2020, Studio Ghibli announced that the film would be an adaptation of the novel Earwig and the Witch by Diana Wynne Jones. The film was announced as the first full 3D CG animated Ghibli film and slated for a television premiere on NHK in late 2020.",
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //Tombol dalam stack
        Align(
          alignment: Alignment(0.9, -0.95),
          child: FloatingActionButton(
            heroTag: 'totoroBtn',
            onPressed: () {
              setState(() {
                if (isOn == Colors.red[200]) {
                  isOn = Colors.grey;
                  print("Jadi abu");
                } else {
                  isOn = Colors.red[200];
                  print("Jadi merah");
                }
              });
            },
            child: Icon(Totoro.studio_ghibli),
            backgroundColor: Colors.teal[50],
            foregroundColor: isOn,
          ),
        ),
      ]),
      //Tombol luar stack
      floatingActionButton: Align(
        alignment: Alignment(0.98, 0.95),
        child: FloatingActionButton.extended(
          heroTag: 'bookButton',
          onPressed: () {
            Navigator.pushNamed(context, '/booking');
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) {
            //   return Booking();
            // }));
          },
          label: Text("Order"),
          icon: Icon(Totoro.totoro),
          backgroundColor: Colors.teal[50],
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
