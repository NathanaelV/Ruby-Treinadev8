require 'rails_helper'

feature 'Visitor visits home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'Catálogo de Livros')
    expect(page).to have_css('p', text: 'Boas vindas!')
  end

  scenario 'and view list os books' do
    book = Book.create(title: 'Persépolis', author: 'Marjane Satrapi',
                       publication_year: 2009)
    other_book = Book.create(title: 'Orgulho e preconceito',
                             author: 'Jane Austen',
                             publication_year: 1813)
    visit root_path

    expect(page).to have_css('h3', text: book.title)
    expect(page).to have_css('p', text: book.author)
    expect(page).to have_css('p', text: book.publication_year)
    expect(page).to have_css('h3', text: other_book.title)
    expect(page).to have_css('p', text: other_book.author)
    expect(page).to have_css('p', text: other_book.publication_year)
  end
end
