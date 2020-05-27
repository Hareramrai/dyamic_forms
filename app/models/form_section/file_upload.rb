class FormSection::FileUpload < FormSection
  def create_elements
    file_elements.create(position: 0)
  end
end
