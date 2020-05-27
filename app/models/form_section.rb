class FormSection < ApplicationRecord
  belongs_to :form

  has_many :form_elements
  has_many :text_elements, class_name: 'FormElement::Text'
  has_many :file_elements, class_name: 'FormElement::File'
  has_many :select_elements, class_name: 'FormElement::Select'
end
