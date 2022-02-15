import 'dart:ffi';

import 'package:get/get.dart';

class FacturaDetalle extends GetxController {
  var _id = 0.obs;
  var _anotaciones = "".obs;
  var _aumento = "".obs;
  var _autorizacion = "".obs;
  var _clienteId = "".obs;
  var _codigo = "".obs;
  var _comision = 0.obs;
  var _companiaCodigo = 0.obs;
  var _createDate = 0.obs;
  var _createUid = 0.obs;
  var _currencyId = 0.obs;
  var _descuento = 0.obs;
  var _fecha = 0.obs;
  var _iva = 0.obs;
  var _proveedorId = 0.obs;
  var _state = 0.obs;
  var _subtotalCero = 0.obs;
  var _subtotalIva = 0.obs;
  var _tipoPagoId = 0.obs;
  var _total = 0.obs;
  var _writeDate = 0.obs;
  var _writeUid = 0.obs;

  FacturaDetalle(
    this._id,
    this._anotaciones,
    this._aumento,
    this._autorizacion,
    this._clienteId,
    this._codigo,
    this._comision,
    this._companiaCodigo,
    this._createDate,
    this._createUid,
    this._currencyId,
    this._descuento,
    this._fecha,
    this._iva,
    this._proveedorId,
    this._state,
    this._subtotalCero,
    this._subtotalIva,
    this._tipoPagoId,
    this._total,
    this._writeDate,
    this._writeUid,
  );

  @override
  String toString() {
    return 'FacturaDetalle(_id: $_id, _anotaciones: $_anotaciones, _aumento: $_aumento, _autorizacion: $_autorizacion, _clienteId: $_clienteId, _codigo: $_codigo, _comision: $_comision, _companiaCodigo: $_companiaCodigo, _createDate: $_createDate, _createUid: $_createUid, _currencyId: $_currencyId, _descuento: $_descuento, _fecha: $_fecha, _iva: $_iva, _proveedorId: $_proveedorId, _state: $_state, _subtotalCero: $_subtotalCero, _subtotalIva: $_subtotalIva, _tipoPagoId: $_tipoPagoId, _total: $_total, _writeDate: $_writeDate, _writeUid: $_writeUid)';
  }
}
