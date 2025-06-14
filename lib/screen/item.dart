// Step 8: stateless widget
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

  void addQuantity() {
    setState(() {
      quantity++;
    });
  }

  void subtractQuantity() {
    setState(() {
      quantity = quantity > 0 ? quantity - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Quantity: $quantity", style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: addQuantity, child: Text("Add")),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: subtractQuantity,
                child: Text("Subtract"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Subtract"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
