# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '19.99'
    fill_in 'Publication date', with: '2000/01/01'
    click_on 'Create Book'
    visit books_pathtitle
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('19.99')
    expect(page).to have_content('2000/01/01')
  end
end

RSpec.describe 'Deleting a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '19.99'
    fill_in 'Publication date', with: '2000/01/01'
    click_on 'Create Book'
    visit books_path
    click_on 'Destroy'
    expect(page).to_not have_content('harry potter')
    expect(page).to_not have_content('J.K. Rowling')
    expect(page).to_not have_content('19.99')
    expect(page).to_not have_content('2000/01/01')
  end
end

RSpec.describe 'Showing a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '19.99'
    fill_in 'Publication date', with: '2000/01/01'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('Title: harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('19.99')
    expect(page).to have_content('2000/01/01')
  end
end

RSpec.describe 'Editing a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '19.99'
    fill_in 'Publication date', with: '2000/01/01'
    click_on 'Create Book'
    visit books_path
    click_on 'Edit'
    fill_in 'Title', with: ''
    fill_in 'Title', with: 'harry potter 2'
    fill_in 'Author', with: ''
    fill_in 'Author', with: 'J.K. Rowling 2'
    fill_in 'Price', with: ''
    fill_in 'Price', with: '20.00'
    fill_in 'Publication date', with: ''
    fill_in 'Publication date', with: '1999/01/01'
    click_on 'Update Book'
    visit books_path
    expect(page).to have_content('harry potter 2')
    expect(page).to have_content('J.K. Rowling 2')
    expect(page).to have_content('20.00')
    expect(page).to have_content('1999/01/01')
  end
end