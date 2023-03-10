import 'package:flutter/material.dart';
import 'package:resep_makanan/model/resep.dart';
import 'package:resep_makanan/model/resep_api.dart';
import 'package:resep_makanan/views/detail_resep.dart';
import 'package:resep_makanan/views/widget/resep_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Resep> _resep;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getResep();
  }

  Future<void> getResep() async {
    _resep = await ResepApi.getResep();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(width: 10), Text('191011450209_WIKE RAHAYU')],
        ),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _resep.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: ResepCard(
                      title: _resep[index].name,
                      coockTime: _resep[index].totalTime,
                      rating: _resep[index].rating.toString(),
                      thumbnailUri: _resep[index].images),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailResep(
                            name: _resep[index].name,
                            totalTime: _resep[index].totalTime,
                            rating: _resep[index].rating.toString(),
                            images: _resep[index].images,
                            description: _resep[index].description,
                          ),
                        ))
                  },
                );
              },
            ),
    );
  }
}
