import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/widgets/card_swiper.dart';
import 'package:peliculas_app/widgets/movie_slider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Servicios de Tracktec')),
          elevation: 0,
          actions: [
            IconButton(icon: Icon(Icons.search_outlined), onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper(movies: moviesProvider.onDisplayMovies),
              MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares',
              ),
            ],
          ),
        ));
  }
}
