class Certificado < ApplicationRecord
  belongs_to :cliente
  DROGA_TIPO = ['PIRETROYDES', 'BROMADILONE', 'OTROS']
  TRATAMIENTO_TIPO = ['ASPERSIÓN', 'HUMO', 'NIEBLA', 'OTROS']
  VECTOR_TIPO = ['INSECTO', 'ROEDORES', 'VOLADORES', 'BACTERIAS', 'OTROS']
end
