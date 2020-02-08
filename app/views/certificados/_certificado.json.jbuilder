json.extract! certificado, :id, :nro_certificado, :rubro, :tratamiento, :otro_tratamiento, :vectores_tratados, :otros_vectores, :superficie_tratada, :veneno_clase, :droga_usada, :otra_droga_usada, :fecha_aplicacion, :fecha_vencimiento, :hora_aplicacion, :proximo_tratamiento, :estado, :importe, :id_cliente, :cliente_id, :created_at, :updated_at
json.url certificado_url(certificado, format: :json)
