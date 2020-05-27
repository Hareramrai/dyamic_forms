class FormSection::Text < FormSection
  def create_elements
    file_elements.create(position: 0)
  end
end
