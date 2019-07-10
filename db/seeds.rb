DatabaseCleaner.clean_with(:truncation)

Settings.first_or_initialize.update_attributes email: 'studio@molinos.ru', email_header_from: 'studio@molinos.ru', company_name: 'Molinos'
User.create email: 'studio@molinos.ru', password: 'changeme', roles: [:admin]

# FactoryBot.create_list(:user, 10)
# FactoryBot.create_list(:article, 30)
