import 'package:flutter/material.dart';
import 'package:unj/ui_screen/page_detail_event.dart';

class PageGridEvent extends StatefulWidget {
  const PageGridEvent({super.key});

  @override
  State<PageGridEvent> createState() => _PageGridEventState();
}

class _PageGridEventState extends State<PageGridEvent> {
  // deklarasi grid event
  List<Container> galeryEvent = [];

  var listGaleryEvent = [
    {
      "nama": "Event Lomba 1",
      "gambar": "event1.png",
      "isi": "ini adalah event kita yang pertama di bulan ini!"
    },
    {
      "nama": "Event Lomba 2",
      "gambar": "event2.png",
      "isi": "ini adalah event kita yang kedua di bulan ini!"
    },
    {
      "nama": "Event Lomba 3",
      "gambar": "event3.png",
      "isi": "ini adalah event kita yang ketiga di bulan ini!"
    },
    {
      "nama": "Event Lomba 4",
      "gambar": "event4.png",
      "isi": "ini adalah event kita yang keempat di bulan ini!"
    },
    {
      "nama": "Event Lomba 5",
      "gambar": "event5.png",
      "isi": "ini adalah event kita yang kelima di bulan ini!"
    }
  ];
  // JSON -> Javascript object notation

  // method untuk create event
  _createGaleryEvent() async {
    for (var i = 0; i < listGaleryEvent.length; i++) {
      final itemDataGalery = listGaleryEvent[i];
      // ngambil masing-masing object
      final String? gambarEvent = itemDataGalery['gambar'];
      final String? namaEvent = itemDataGalery['nama'];
      final String? isiEvent = itemDataGalery['isi'];

      // Kita tambahkan view ke list
      galeryEvent.add(Container(
        padding: EdgeInsets.all(4),
        child: Card(
          child: InkWell(
            onTap: () {
              // pindah ke page detail
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageDetailEvent(
                          nNamaEvent: namaEvent!,
                          nIsiEvent: isiEvent!,
                          nGambarEvent: gambarEvent!)));
            },
            child: Column(
              children: [
                // animasi hero
                Hero(
                  tag: namaEvent!,
                  child: Image.asset(
                    'images/$gambarEvent',
                    height: 135,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '${namaEvent}',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                )
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createGaleryEvent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: galeryEvent,
      ),
    );
  }
}
