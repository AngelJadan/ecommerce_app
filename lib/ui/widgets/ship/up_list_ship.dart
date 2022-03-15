
import 'package:flutter/cupertino.dart';

import '../../../core/models/ships.dart';

class ShipData extends StatelessWidget{

  final Ship ship;
  const ShipData(this.ship);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 110,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: FadeInImage(
              placeholder: AssetImage(ship.url),
              image: NetworkImage(ship.image),
              width: 250,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(ship.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          ),
        ]
      ),
    );
  }
  
}