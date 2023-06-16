import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/news_model.dart';
import 'package:flutter_application_3/screens/details_screen.dart';

// ignore: must_be_immutable
class NewsListTilte extends StatefulWidget {
  NewsListTilte(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<NewsListTilte> createState() => _NewsListTilteState();
}

class _NewsListTilteState extends State<NewsListTilte> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(widget.data),
            ));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(10.0),
        height: 130,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25.0)),
        child: Row(children: [
          Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.title}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(widget.data.urlToImage!),
                          fit: BoxFit.fitHeight)),
                ),
              )),
          const SizedBox(
            width: 10.0,
          ),
          Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    widget.data.title!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.data.content!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white54),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
