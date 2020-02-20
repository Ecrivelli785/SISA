json.extract! cliente, :id, :id_cliente, :apellido, :nombre, :client_type, :domicilio, :telefono, :celular, :barrio, :id_rubro, :estado, :estado_mkt, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
