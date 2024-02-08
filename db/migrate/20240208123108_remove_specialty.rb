class RemoveSpecialty < ActiveRecord::Migration[7.1]
  def change
    remove_column :doctors, :specialty, :string
  end
end

#migration créée seule pour retirer la colonne specialty de la table doctors