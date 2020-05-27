class FormSection::Address < FormSection

  def create_elements
    position = 0
    text_elements.create(label: 'Street Address', position: position+=1)
    text_elements.create(label: 'Street Address Line 2', position: position+=1)
    text_elements.create(label: 'City', position: position+=1)
    text_elements.create(label: 'State / Province', position: position+=1)
    text_elements.create(label: 'Postal / Zip Code', position: position+=1)
  end

end
