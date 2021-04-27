require 'rails_helper'

RSpec.describe CategoryController, type: :routing do
  describe 'category routes' do
    it 'GET routes to #show' do
      expect(get: '/categories/2').to route_to('categories#show', id: '2')
    end

    it 'POST routes to #create' do
      expect(post: '/categories/4').to route_to('categories#create', id: '3')
    end
  end
end
