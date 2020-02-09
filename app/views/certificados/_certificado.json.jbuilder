json.extract! certificado, :id, :nro_certificado, :id_rubro, :id_tratamiento, :id_vector, :superficie, :id_drogas, :fecha_aplicacion, :fecha_vencimiento, :hora_aplicacion, :proximo_tratamiento, :estado, :codigo, :id_cliente, :id_tipo_cliente, :observaciones_certificado, :id_tecnico,:created_at, :updated_at
json.url certificado_url(certificado, format: :json)
