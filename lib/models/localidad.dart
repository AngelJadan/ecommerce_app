class Localidad {
  int _id;
  String _codigo;
  String _codigoPostal;
  DateTime _createDate;
  DateTime _createuId;
  String _descripcion;
  String _gentilicio;
  Localidad _locpadreId;
  int _tipoLocalidadId;
  DateTime _writeDate;
  DateTime _writeUid;

  Localidad(
      this._id,
      this._codigo,
      this._codigoPostal,
      this._createDate,
      this._createuId,
      this._descripcion,
      this._gentilicio,
      this._locpadreId,
      this._tipoLocalidadId,
      this._writeDate,
      this._writeUid);

  int get id => _id;
  set id(int id) {
    _id = id;
  }

  String get codigo => _codigo;
  set codigo(String codigo) {
    _codigo = codigo;
  }

  String get codigoPostal => _codigoPostal;
  set codigoPostal(String codigoPostal) {
    _codigoPostal = codigoPostal;
  }

  DateTime get createDate => _createDate;
  set createDate(DateTime createDate) {
    _createDate = createDate;
  }

  DateTime get createuId => _createuId;
  set createuId(DateTime createuId) {
    _createuId = createuId;
  }

  String get descripcion => _descripcion;
  set description(String descripcion) {
    _descripcion = descripcion;
  }

  String get gentilicio => _gentilicio;
  set gentilicio(String gentilicio) {
    _gentilicio = gentilicio;
  }

  Localidad get locpadreId => _locpadreId;
  set locpadreId(Localidad locpadreId) {
    _locpadreId = locpadreId;
  }

  int get tipoLocalidadId => _tipoLocalidadId;

  set tipoLocalidadId(int tipoLocalidadId) {
    _tipoLocalidadId = tipoLocalidadId;
  }

  DateTime get writeDate => _writeDate;
  set writeDate(DateTime writeDate) {
    _writeDate = writeDate;
  }

  DateTime get writeUid => _writeUid;
  set writeUid(DateTime writeUid) {
    _writeUid = writeUid;
  }

  @override
  String toString() {
    return 'id: ${id}, codigo: ${codigo}, codigoPostal: ${codigoPostal}, createDate${createDate}, createuId: ${createuId}, descripcion: ${descripcion}, gentilicio: ${gentilicio}, locpadreId: ${locpadreId}, tipoLocalidadId: ${tipoLocalidadId}, writeDate: ${writeDate}, writeUid: ${writeUid}';
  }
}
