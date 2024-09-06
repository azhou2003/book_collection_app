# frozen_string_literal: true

# spec/features/book_management_spec.rb

require 'rails_helper'

RSpec.feature 'Book management', type: :feature do
  scenario 'User adds a new book successfully' do
    visit new_book_path

    fill_in 'Title', with: 'The Great Gatsby'
    fill_in 'Author', with: 'F. Scott Fitzgerald'
    fill_in 'Price', with: '19.99'

    # Ensure date is filled in correctly; adapt according to your form
    select '2024', from: 'book_published_date_1i'
    select 'August', from: 'book_published_date_2i'
    select '28', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text('Book was successfully created.')
    expect(page).to have_text('The Great Gatsby')
  end

  scenario 'User fails to add a book with a blank title' do
    visit new_book_path

    fill_in 'Author', with: 'F. Scott Fitzgerald'
    fill_in 'Price', with: '19.99'

    select '2024', from: 'book_published_date_1i'
    select 'August', from: 'book_published_date_2i'
    select '28', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text("Title can't be blank")
  end

  scenario 'User fails to add a book with a blank author' do
    visit new_book_path

    fill_in 'Title', with: 'The Great Gatsby'
    fill_in 'Price', with: '19.99'

    select '2024', from: 'book_published_date_1i'
    select 'August', from: 'book_published_date_2i'
    select '28', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text("Author can't be blank")
  end

  scenario 'User fails to add a book with a blank price' do
    visit new_book_path

    fill_in 'Title', with: 'The Great Gatsby'
    fill_in 'Author', with: 'F. Scott Fitzgerald'

    select '2024', from: 'book_published_date_1i'
    select 'August', from: 'book_published_date_2i'
    select '28', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text("Price can't be blank")
  end

  scenario 'User fails to add a book with a non-decimal price' do
    visit new_book_path

    fill_in 'Title', with: 'The Great Gatsby'
    fill_in 'Author', with: 'F. Scott Fitzgerald'

    # Use non-decimal price, e.g., a string or an improperly formatted number
    fill_in 'Price', with: 'abc'

    select '2024', from: 'book_published_date_1i'
    select 'August', from: 'book_published_date_2i'
    select '28', from: 'book_published_date_3i'

    click_button 'Create Book'

    expect(page).to have_text('Price is not a number')
  end
end
