class Certificado < ApplicationRecord
  belongs_to :cliente
  has_one :droga
  attr_accessor :apellido, :nombre, :cliente_id, :client_type, :domicilio, :telefono, :celular, :barrio, :estado, :id_rubro, :cuit, :correo
  DROGA_TIPO = ['PIRETROYDES', 'BROMADILONE', 'OTROS']
  TRATAMIENTO_TIPO = ['ASPERSIÓN', 'HUMO', 'NIEBLA', 'OTROS']
  VECTOR_TIPO = ['INSECTO', 'ROEDORES', 'VOLADORES', 'BACTERIAS', 'OTROS']
  validates :droga_tipo, presence: true, inclusion: { in: DROGA_TIPO }
  validates :tratamiento_tipo, presence: true, inclusion: { in: TRATAMIENTO_TIPO }
  validates :vector_tipo, presence: true, inclusion: { in: VECTOR_TIPO }

end
