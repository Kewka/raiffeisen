import 'package:flutter/material.dart';

import '../../../models/category.dart';

class CategoryTile extends StatelessWidget {
  final Category category;

  const CategoryTile({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.title),
      subtitle: Text(
        '${category.count} transactions',
        style: Theme.of(context).textTheme.caption,
      ),
      leading: ClipRRect(
        child: Container(
          color: Color(0xFFC4C4C4).withOpacity(0.24),
          width: 43,
          height: 43,
          child: Icon(category.icon, color: category.color),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      trailing: Text(
        '\$ ${category.totalPrice.toStringAsFixed(2)}',
        style: Theme.of(context).textTheme.subtitle2,
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
