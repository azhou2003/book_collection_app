# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.create!([
  {
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
    price: 12.99,
    published_date: Date.new(1960, 7, 11),
    created_at: Time.now,
    updated_at: Time.now
  },
  {
    title: "1984",
    author: "George Orwell",
    price: 9.99,
    published_date: Date.new(1949, 6, 8),
    created_at: Time.now,
    updated_at: Time.now
  },
  {
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    price: 10.99,
    published_date: Date.new(1925, 4, 10),
    created_at: Time.now,
    updated_at: Time.now
  },
  {
    title: "Pride and Prejudice",
    author: "Jane Austen",
    price: 8.50,
    published_date: Date.new(1813, 1, 28),
    created_at: Time.now,
    updated_at: Time.now
  },
  {
    title: "Moby-Dick",
    author: "Herman Melville",
    price: 15.99,
    published_date: Date.new(1851, 10, 18),
    created_at: Time.now,
    updated_at: Time.now
  }
])

