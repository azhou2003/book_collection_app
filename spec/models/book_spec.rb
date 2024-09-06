# frozen_string_literal: true

# spec/models/book_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      #   book = Book.new(title: 'Test Book', author: 'Author Name')
      book = Book.new(title: 'Test Book',
                      price: 9.99,
                      author: 'Test Author',
                      published_date: Date.new(2024, 8, 28))
      expect(book).to be_valid
    end

    it 'is not valid without a title' do
      book = Book.new(price: 9.99,
                      author: 'Test Author',
                      published_date: Date.new(2024, 8, 28))
      expect(book).not_to be_valid
      expect(book.errors[:title]).to include("can't be blank")
    end

    it 'is not valid without an author' do
      book = Book.new(title: 'Test Book',
                      price: 9.99,
                      published_date: Date.new(2024, 8, 28))
      expect(book).not_to be_valid
      expect(book.errors[:author]).to include("can't be blank")
    end

    it 'is not valid without a price' do
      book = Book.new(title: 'Test Book',
                      author: 'Test Author',
                      published_date: Date.new(2024, 8, 28))
      expect(book).not_to be_valid
      expect(book.errors[:price]).to include("can't be blank")
    end

    it 'is not valid without a published date' do
      book = Book.new(title: 'Test Book',
                      price: 9.99,
                      author: 'Test Author')
      expect(book).not_to be_valid
      expect(book.errors[:published_date]).to include("can't be blank")
    end

    # it 'is not valid without a title' do
    #   book = Book.new(author: 'Author Name')
    #   expect(book).not_to be_valid
    #   expect(book.errors[:title]).to include("can't be blank")
    # end

    # it 'is not valid without an author' do
    #   book = Book.new(title: 'Test Book')
    #   expect(book).not_to be_valid
    #   expect(book.errors[:author]).to include("can't be blank")
    # end
  end
end
