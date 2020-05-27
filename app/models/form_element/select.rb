class FormElement::Select< FormElement
  has_many :form_element_options, foreign_key: :form_element_id
end
