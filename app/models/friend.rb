class Friend < ApplicationRecord
  
  # ================  tables relations =======================
  has_many :annotations

  # ================  validations =======================
  validates :name,    presence: true, format: { with: /[[:alpha:]]/, message: 'only alphabetic character' }
  validates :phone,   presence: true, format: { with: /[[:digit:]]/, message: 'only number please' }
  validates :address, presence: true
  validates :email,   presence: true, uniqueness: true
  validates :sex,     presence: true

  # Custome validations
  # def sex_description_validation
  #   if self.sex.blank?
  #     " - "
  #   else
  #     self.sex
  #   end
  # end

  # Cherche un registre par attribut
  def self.findBy(query)
    where("name like ?", "%#{query}%")
  end

end
