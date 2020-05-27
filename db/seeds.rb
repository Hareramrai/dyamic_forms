user1 = User.create(name: 'Suraj')

form = user1.forms.create(title: 'Employee Details Form', status: 'draft')

personal_header = form.form_sections.create(
  type: 'FormSection::Header', title: 'Personal Info', position: 0
)

full_name = form.form_sections.create(
  type: 'FormSection::FullName', title: 'Name', position: 1
)


full_name.create_elements(
  first_name: 'First Name',
  middle_name: 'Middle Name',
  last_name: 'Last Name'
)


upload_picture = form.form_sections.create(
  type: 'FormSection::FileUpload', title: 'Upload your picture', position: 2
)

upload_picture.create_elements

personal_address = form.form_sections.create(
  type: 'FormSection::Address', title: 'Personal Address', position: 3
)

personal_address.create_elements

work_information_header = form.form_sections.create(
  type: 'FormSection::Header', title: 'Work Information', position: 4
)


name_of_company = form.form_sections.create(
  type: 'FormSection::Text', title: 'Name of Company', position: 5
)

name_of_company.create_elements

company_address = form.form_sections.create(
  type: 'FormSection::Address', title: 'Company Address', position: 6
)

company_address.create_elements

role_in_company = form.form_sections.create(
  type: 'FormSection::Select', title: 'Role in the company', position: 7
)

role_in_company.create_elements(%W[Executive Senior\ Level Mid\ Level Junior])
