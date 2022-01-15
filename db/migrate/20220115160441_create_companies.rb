class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :about
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :contact
      t.string :email
      t.references :industry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
