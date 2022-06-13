import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF7CC0FF),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title:
        Align(
          alignment: Alignment.center,

          child: Text(
            "Search",
            style: TextStyle(
              fontFamily: "Signatra",
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed:() {
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
    );
  }
}
class DataSearch extends SearchDelegate<String>{

  final people = [
    "ahmet",
    "mehmet",
    "irem",
    "ezgi",
    "murat",
    "ayşe",
    "kemal",
    "ozan",
    "kamil",
  ];

  final recentPeople = [
    "murat",
    "ozan",
    "ezgi",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions actions for app bar
    return [
      IconButton( icon:Icon(Icons.search),
          onPressed: (){
            query = "";
          })
    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading leading icon on the left of app bar
    return CloseButton();
  }


  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    //burda tıkladıgımızda o sayfaya yönlendirme koyucam.
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentPeople:people.where((p)=>p.startsWith(query)).toList();
    return (
        ListView.builder(itemBuilder: (context,index)=>ListTile(
          onTap: (){
            showResults(context);
          },
          leading: Icon(Icons.add_chart_outlined),
          title: Text(suggestionList[index]),
        ),
          itemCount: suggestionList.length,
        )
    );
    // TODO: implement buildSuggestions

  }

}



class UserResult extends StatelessWidget {
  const UserResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("User Result");
  }
}

