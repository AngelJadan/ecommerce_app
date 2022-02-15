import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/*final String url = "https://dev.ups.edu.ec/hasura/v1/graphql";
final response = await http.get(url, headers:{
  "Content-Type":"application/json",
  "x-hasura-admin-secret":"scafp",
});*/

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link: HttpLink(uri: "https://dev.ups.edu.ec/hasura/v1/graphql", headers: {
      "Content-Type": "application/json",
      "x-hasura-admin-secret": "scafp",
    }
    )));


final String getAllProductQuery = """
query MyQuery {
  product_template {
    name
    paquete_id
    id
    image_url
    list_price
    price
    rental
    purchase_ok
    active
    availability
    brand
    calculo_kardex
    can_image_1024_be_zoomed
    categ_id
    category
    color
  }
}
""";
