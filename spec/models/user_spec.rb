require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "it saves with valid parameters" do 
      @user = User.create({name: "user", email: "email@email.com", password: '12345', password_confirmation: '12345'})
      expect(User.count).to equal(1)
    end

    it "it does not save with invalid parameters" do 
      @user = User.create({name: "user", email: "email@email.com", password: '12234', password_confirmation: '1234'})
      expect(User.count).to equal(0)
    end

    it "it wont saves with invalid email" do 
      @user = User.create({name: "user", password: '12345', password_confirmation: '12345'})
      expect(User.count).to equal(0)
    end

    it "it wont save with duplicate email" do 
      @user = User.create({name: "user", email: "email@email.com", password: '12345', password_confirmation: '12345'})
      @user2 = User.create({name: "user", email: "email@email.com", password: '12345', password_confirmation: '12345'})
      expect(User.count).to equal(1)
    end

    it "it wont save with password less then 5 chars" do 
      @user = User.create({name: "user", email: "email@email.com", password: '1234', password_confirmation: '1234'})
      expect(User.count).to equal(0)
    end
  end
    describe '.authenticate_with_credentials' do
  end
end
