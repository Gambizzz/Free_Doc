class Appointment < ApplicationRecord
  belongs_to :doctor, optional: true  #pour rendre le belongs_to optionnel
  belongs_to :patient, optional: true
  belongs_to :city, optional: true
end
