class FormSection::Select < FormSection
  def create_elements(options)
    select_field = select_elements.create(position: 0)
    options.map { |option|
      select_field.form_element_options.create(label: option, value: option)
    }
  end
end
