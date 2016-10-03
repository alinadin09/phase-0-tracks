require_relative 'wordgame'

describe Game do 
	let(:game) { Game.new(["c","a","t"]) }

	it "stores correct word" do
		expect(game.correct_word).to eq ["c","a","t"]
	end

	it "calculates the length of correct word" do
		expect(game.length).to eq 3
	end

	it "puts dashes in place of letters" do
		expect(game.working_word).to eq ["-","-","-"]
	end

	it "expects guesscount to equal 0" do
		expect(game.guess_count).to eq 0
	end

	it "expects to add letter to working array" do
		game.increase_guess_count_when_adding_letter("c")
		expect(game.all_guesses).to eq ["c"]
	end

	it "provides user feedback" do
		expect(game.user_feedback("c")).to eq "c - -"
	end

	it "when a user enters a letter that's already been entered" do
		expect(game.repeated_guesses_dont_count("c")).to eq nil
	end

end





