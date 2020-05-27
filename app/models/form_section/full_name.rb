class FormSection::FullName < FormSection

  def create_elements(first_name: , middle_name: , last_name: )
    position = -1
    text_elements.create(label: first_name, position: position+=1) if first_name
    text_elements.create(label: middle_name, position: position+=1) if middle_name
    text_elements.create(label: last_name, position: position+=1) if last_name
  end

end
