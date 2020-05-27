class CreateFormElements < ActiveRecord::Migration[5.2]
  def change
    create_table :form_elements do |t|
      t.string :type
      t.string :label
      t.string :placeholder
      t.json :style
      t.string :validation
      t.integer :position
      t.string :help_text
      t.references :form_section

      t.timestamps
    end
  end
end
