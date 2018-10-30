require 'rails_helper'

describe Article, type: :model do
  describe 'calidations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end
end
