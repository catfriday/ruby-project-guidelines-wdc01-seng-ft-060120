require_relative "../config/environment.rb"

describe "DishChecker" do

    it "Raises an error when given a string" do
        expect{Dish.find_by_ingredients("string")}.to raise_error NoMethodError
    end
    # it "returns and array" do
    #     expect(Ingredient.all_names.class).to be(Array)
    # end

    # it "containts strings" do
    #     expect(Ingredient.all_names[0].class).to be(String)
    # end

    # it "raises an error when called on an instance" do
    #     expect{Ingredient.first.all_names}.to raise_error NoMethodError 
    # end 

    # it "includes 'tahini' as an ingredient" do
    #     expect(Ingredient.all_names.include?("tahini")).to be(true)
    # end
end