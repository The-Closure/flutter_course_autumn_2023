import 'dart:io';

import 'package:graphql/client.dart';

String gqlString = """
query {
  todos {
    id,
    done
  }
}
""";

// var req = Query(
//   options: QueryOptions(document: gql(gqlString)),
//   builder: (result, {fetchMore, refetch}) {
//     print(result);
//   },
// );
Future<GraphQLClient> getClient() async {
  final store = await HiveStore.open(path: 'my/cache/path');
  return GraphQLClient(

      /// pass the store to the cache for persistence
      cache: GraphQLCache(store: store),
      link: HttpLink('https://api.mocki.io/v2/c4d7a195/graphql'));
}

var option = QueryOptions(document: gql(gqlString));

getData() async {
  final clinet = await getClient();

  final result = await clinet.query(option);
  print(result);
}
