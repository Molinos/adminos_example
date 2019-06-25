DatabaseCleaner.clean_with(:truncation)

Settings.first_or_initialize.update_attributes(email: 'studio@molinos.ru',
                                               email_header_from: 'studio@molinos.ru',
                                               company_name: 'Molinos',
                                               twitter: 'https://twitter.com/Molinos_Ru',
                                               facebook: 'https://www.facebook.com/molinos.ru',
                                               github: 'https://github.com/Molinos',
                                               copyright: 'Copyright © Molinos 2019')

User.create email: 'studio@molinos.ru', password: 'changeme', roles: [:admin]

# FactoryBot.create_list(:user, 10)
# FactoryBot.create_list(:article, 30)
