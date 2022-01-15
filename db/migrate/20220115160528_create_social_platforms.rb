class CreateSocialPlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :social_platforms do |t|
      t.string :name
      t.string :url
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
