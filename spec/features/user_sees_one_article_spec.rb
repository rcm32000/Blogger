require 'rails_helper'

describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'displays information for one article' do
      article1 = Article.create!(title: 'Title 1', body: 'Body 1')
      article2 = Article.create!(title: 'Title 2', body: 'Body 2')

      visit articles_path

      click_link article1.title

      expect(page).to have_content(article1.title)
      expect(page).to have_content(article1.body)
      expect(page).to have_link('<< Back to Articles List')
    end
  end
end
