class Certificado < ApplicationRecord
  belongs_to :cliente
  belongs_to :tecnico
  has_one :tratamientos
  has_one :vector
  has_one :tipos_cliente
  has_one :rubro
  has_one :droga
  attr_accessor :id_cliente
  DROGA_TIPO = ['PIRETROYDES', 'BROMADILONE', 'OTROS']
  TRATAMIENTO_TIPO = ['ASPERSIÓN', 'HUMO', 'NIEBLA', 'OTROS']
  VECTOR_TIPO = ['INSECTO', 'ROEDORES', 'VOLADORES', 'BACTERIAS', 'OTROS']
  validates :droga_tipo, presence: true, inclusion: { in: DROGA_TIPO }
  validates :tratamiento_tipo, presence: true, inclusion: { in: TRATAMIENTO_TIPO }
  validates :vector_tipo, presence: true, inclusion: { in: VECTOR_TIPO }
end
