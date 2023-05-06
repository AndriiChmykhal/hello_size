class MyApp extends StatelessWidget {
  final Sizes _userSizes = Sizes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Sizes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Sizes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddSizePage(_userSizes)),
                  );
                },
                child: Text('Add Size'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySizesPage(_userSizes)),
                  );
                },
                child: Text('My Sizes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}