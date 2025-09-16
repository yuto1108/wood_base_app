class CreateAdministratorTops < ActiveRecord::Migration[7.0]
  def change
    create_table :administrator_tops do |t|
      t.string :title
      t.text :before_image
      t.text :after_image
      t.text :description

      t.timestamps
    end
  end
end
