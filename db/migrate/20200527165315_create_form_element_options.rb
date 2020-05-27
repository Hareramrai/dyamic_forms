class CreateFormElementOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :form_element_options do |t|
      t.references :form_element, foreign_key: true
      t.string :label
      t.string :value

      t.timestamps
    end
  end
end
