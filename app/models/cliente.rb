class Cliente < ApplicationRecord
  has_many :certificados
  CLIENT_TYPE = ['COMERCIAL', 'INDUSTRIAL', 'PARTICULAR', 'EDUCACIONAL', 'ESTATAL', 'OTROS']
  validates :client_type, presence: true, inclusion: { in: CLIENT_TYPE }
  accepts_nested_attributes_for :certificados
end
