class Certificado < ApplicationRecord
  belongs_to :cliente
  belongs_to :tecnico
end
