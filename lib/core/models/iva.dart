class Iva {
  int _id;
  DateTime _createDate;
  int _createuId;
  String _descripcion;

  Iva(
    this._id,
    this._createDate,
    this._createuId,
    this._descripcion,
  );

  int get id => this._id;

  set id(int value) => this._id = value;

  get createDate => this._createDate;

  set createDate(value) => this._createDate = value;

  get createuId => this._createuId;

  set createuId(value) => this._createuId = value;

  get descripcion => this._descripcion;

  set descripcion(value) => this._descripcion = value;

  @override
  String toString() {
    return 'Iva(_id: $_id, _createDate: $_createDate, _createuId: $_createuId, _descripcion: $_descripcion)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Iva &&
        other._id == _id &&
        other._createDate == _createDate &&
        other._createuId == _createuId &&
        other._descripcion == _descripcion;
  }

  @override
  int get hashCode {
    return _id.hashCode ^
        _createDate.hashCode ^
        _createuId.hashCode ^
        _descripcion.hashCode;
  }
}
