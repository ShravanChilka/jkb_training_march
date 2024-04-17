import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_introduction/screens/popular_screen/coffee.dart';
import 'package:widget_introduction/screens/popular_screen/widgets/coffee_list_tile.dart';

const List<Coffee> coffeeList = [
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
  Coffee(
    title: 'Expresso Brown',
    description: 'Simplicity itself',
    imageUrl:
        'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 100,
  ),
  Coffee(
    title: 'Macchiato',
    description: '2 Shot of expresso',
    imageUrl:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price: 200,
  ),
];
const imageUrl =
    'https://images.unsplash.com/photo-1610632380989-680fe40816c6?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF47362F),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF47362F),
        title: const Text(
          'Popular',
          style: TextStyle(
            fontFamily: 'Mukta',
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: coffeeList.length,
          itemBuilder: (context, index) {
            return CoffeeListTile(
              coffee: coffeeList[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
        ),
      ),
    );
  }
}
