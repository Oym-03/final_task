// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> searchResults = [];

  void _onSearchSubmitted(String query) {
    List<String> dummyResults = [
      'Result 1 for $query',
      'Result 2 for $query',
      'Result 3 for $query',
    ];

    setState(() {
      searchResults = dummyResults;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: const Color(0xFF2B0262),
        title: TextField(
          controller: _searchController,
          onSubmitted: (query) => _onSearchSubmitted(query),
          decoration: const InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              _onSearchSubmitted(_searchController.text);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(searchResults[index]),
          );
        },
      ),
    );
  }
}

class SearchResultScreen extends StatelessWidget {
  final String searchQuery;

  SearchResultScreen({super.key, required this.searchQuery}) {
    // TODO: implement SearchResultScreen
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: Center(
        child: Text('Search results for: $searchQuery'),
      ),
    );
  }
}
