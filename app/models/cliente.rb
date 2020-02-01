class Cliente < ApplicationRecord
  has_many :certificados, dependent: :destroy
end
