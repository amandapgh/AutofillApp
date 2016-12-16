require "autofill"

describe WordDictionary do
	describe "is_word?" do
		context "When given the list ['john', 'jean', 'job'] and asked for 'john'" do
			it "returns true" do
				wd = WordDictionary.new
				wd.add_words("john, jean, job")
				expect(wd.is_word?("john")).to eql(true)
			end
		end

		context "When given the list ['john', 'jean', 'job'] and asked for 'jo'" do
			it "returns false" do
				wd = WordDictionary.new
				wd.add_words("john, jean, job")
				expect(wd.is_word?("jo")).to eql(false)
			end
		end
	end 

	describe "possible_words" do
		context "When given the list ['john', 'jean', 'job'] and asked for 'jo'" do
			it "returns ['john', 'job']" do
				wd = WordDictionary.new
				wd.add_words("john, jean, job")
				expect(wd.possible_words("jo")).to match_array(["john", "job"])
			end
		end
		context "When given the list ['john', 'jean', 'job'] and asked for 'b'" do
			it "returns []" do
				wd = WordDictionary.new
				wd.add_words("john, jean, job")
				expect(wd.possible_words("b")).to match_array([])
			end
		end
	end
end