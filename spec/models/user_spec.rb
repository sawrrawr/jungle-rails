require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should have a password' do
      @user = User.new(password: 'password', password_confirmation: 'password')
      expect(@user.password).to eql(@user.password_confirmation)
    end

    it 'should have a name' do
      @user = User.new(name: "Ellie", email: "cat@cat.ca", password: 'password', password_confirmation: 'password')
      expect(@user.name).to be_present
    end

    it 'should have a email' do
      @user = User.new(name: "Ellie", email: "cat@cat.ca", password: 'password', password_confirmation: 'password')
      expect(@user.email).to be_present
    end

    it 'should have a password at least 8 characters long' do
      @user = User.new(name: "Ellie", email: "cat@cat.ca", password: 'password', password_confirmation: 'password')
      expect(@user.password).to have_attributes(size: (be >= 8))
    end

  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

#  Here are the things to test for in this model's validations:
# It must be created with a password and password_confirmation fields
# These need to match so you should have an example for where they are not the same
# These are required when creating the model so you should also have an example for this
# Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
# Email, first name, and last name should also be required




end
