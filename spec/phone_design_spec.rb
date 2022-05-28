require 'phone_book'

RSpec.describe PhoneBook do
  context "with no entries" do
    it "has an empty list" do
      phone_book = PhoneBook.new
      expect(phone_book.list).to eq []
    end
  end

  context "given an entry with a number" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("07596802695")
      expect(phone_book.list).to eq ["07596802695"]
    end
  end

  context "given a string including a number" do
    it "stores the number" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("I was calling my friend 07596802695 the other day")
      expect(phone_book.list).to eq ["07596802695"]
    end
  end

  context "given string with two numbers in it" do
    it "stores the numbers in list" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My faves: 07596802695, 07889982345")
      expect(phone_book.list).to eq ["07596802695", "07889982345"]
    end
  end

  context "given entry with no numbers" do
    it "it stores nothing" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My faves: ")
      expect(phone_book.list).to eq []
    end
  end

  context "given two entries with numbers" do
    it "stores all numbers seen" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My friend George is 07596802695")
      phone_book.extract_numbers("My friend Sarah is 07596802777")
      expect(phone_book.list).to eq ["07596802695", "07596802777"]
    end
  end

  context "too few digits" do
    it "does not add number with too few digits" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My friend George is 075968026")
      expect(phone_book.list).to eq []
    end
  end

  context "no duplicates" do
    it "does not add numbers twice" do
      phone_book = PhoneBook.new
      phone_book.extract_numbers("My friend George is 07800000000")
      phone_book.extract_numbers("My mate George is 07800000000")
      expect(phone_book.list).to eq ["07800000000"]
    end
  end

end