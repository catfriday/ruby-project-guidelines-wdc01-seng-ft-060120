require_relative "../config/environment.rb"

describe "IngredientChecker" do

    it "returns and array" do
        expect(Ingredient.all_names.class).to be(Array)
    end

    it "containts strings" do
        expect(Ingredient.all_names[0].class).to be(String)
    end

    it "raises an error when called on an instance" do
        expect{Ingredient.first.all_names}.to raise_error NoMethodError 
    end 

    it "includes 'tahini' as an ingredient" do
        expect(Ingredient.all_names.include?("tahini")).to be(true)
    end
end

        # it "returns true when input is 'dad'" do
        #     expect(checker.is_palindrome?('dad')).to be(true)
        # end