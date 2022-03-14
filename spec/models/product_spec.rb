require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    it 'should save when all fields are entered correctly' do
      @category = Category.new(name: "Electronics")
      @product = Product.new(name: 'NAME', quantity: 4, price: 4.99, category: @category).save
      expect(@product).to eql(true)
    end

    it 'should have a name' do
      @category = Category.new(name: "Electronics")
      @product = Product.new(name: nil, quantity: 4, price: 4.99, category: @category)
      expect{ raise @product }.to raise_error
    end

    it 'should have a quantity' do
      @category = Category.new(name: "Electronics")
      @product = Product.new(name: 'Name', quantity: nil, price: 4.99, category: @category)
      expect{ raise @product }.to raise_error
    end

    it 'should have a price' do
      @category = Category.new(name: "Electronics")
      @product = Product.new(name: 'Name', quantity: 4, price: nil, category: @category)
      expect{ raise @product }.to raise_error
    end

    it 'should have a category' do
      @category = Category.new(name: "Electronics")
      @product = Product.new(name: 'Name', quantity: 4, price: 4.99, category: nil)
      expect{ raise @product }.to raise_error
    end
  


  end
end
