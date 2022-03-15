

const String listAll = r''' 
  query my_query {
    ships {
                    url
                    id
                    image
                    name
                    year_built
                  }
  }
 ''';

 
 /*
 {
                  ships {
                    url
                    id
                    image
                    name
                    year_built
                  }
                }
  */

  /*
  static List<Paquete> getListPaqueteGraphql(List response) {
    List<Paquete> paquetes = [];
    for (int i = 0; i < response.length; i++) {
      paquetes.add(Paquete(
          id: response[i]['id'],
          conexion: Conexion(
              id: response[i]['lug_conexion']['id'],
              origen: Localidad.fromJson(response[i]['lug_conexion']['gesGeoLocalidadByCantonOrigenId'] as Map<String, dynamic>),
              destino: Localidad.fromJson(response[i]['lug_conexion']['ges_geo_localidad'] as Map<String, dynamic>),
              duracionViaje: response[i]['lug_conexion']['duracion_viaje'].toDouble(),
              duracionEntrega: response[i]['lug_conexion']['duracion_entrega'].toDouble(),
              estado: response[i]['lug_conexion']['estado']),
          tipoPaquete: TipoPaquete(
              id: response[i]['ges_tra_tipopaquete']['id'],
              tipoDocumento:
                  TipoDocumento.fromJson(response[i]['ges_tra_tipopaquete']['ges_tra_tipodocumento'] as Map<String, dynamic>),
              pesoMin: response[i]['ges_tra_tipopaquete']['peso_min'],
              pesoMax: (response[i]['ges_tra_tipopaquete']['peso_max']).toDouble(),
              comision: (response[i]['ges_tra_tipopaquete']['comision']).toDouble(),
              estado: response[i]['ges_tra_tipopaquete']['estado']),
          horaSalida: response[i]['hora_salida'].toDouble(),
          horaRecoger: response[i]['hora_recoger'].toDouble(),
          valor: (response[i]['valor']).toDouble(),
          indicaciones: response[i]['indicaciones'],
          company: Company.fromJson(response[i]['res_company'] as Map<String, dynamic>)));
    }
    return paquetes;
  }

  */

  /*

  GraphQLClient _client;

  PaqueteServiceGraphql(this._client);

  Future<List<Paquete>?> getPaquetesByConexion(int id, int idTipo) async {
    try {
      QueryResult result = await _client.query(QueryOptions(document: gql(QuerysPaqueteria.getPaquetesByConexion), variables: {
        'idConexion': id,
        'idTipo': idTipo,
      }));
      if (result.hasException) {
        print(result.exception?.graphqlErrors[0].message);
      } else if (result.data != null) {
        final List response = result.data!['ser_paquete'];
        return Paquete.getListPaqueteGraphql(response);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  */