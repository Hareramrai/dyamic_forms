class CreateFormSections < ActiveRecord::Migration[5.2]
  def change
    create_table :form_sections do |t|
      t.references :form, foreign_key: true
      t.string :title
      t.string :type
      t.integer :position
      t.string :description
      t.json :style

      t.timestamps
    end
  end
end
