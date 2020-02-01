json.extract! cliente, :id, :id_cliente, :apellido, :nombre, :domicilio, :telefono, :celular, :barrio, :rubro, :estado, :estado_mkt, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
