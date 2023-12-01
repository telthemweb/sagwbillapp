import 'package:flutter/material.dart';

Card makeDashboardItems(String title, String img) {
  return Card(
    color: Colors.grey,
    elevation: 1,
    margin: EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: [
          const SizedBox(
            height: 19,
          ),
          Center(
              child: Image(
            image: AssetImage(img),
            width: 70,
          )),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.orange,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
