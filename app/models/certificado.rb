class Certificado < ApplicationRecord
  belongs_to :cliente
  belongs_to :tecnico
  has_one :tratamientos
  has_one :vector
  has_one :tipos_cliente
  has_one :rubro
  has_one :droga
  attr_accessor :id_cliente
end
