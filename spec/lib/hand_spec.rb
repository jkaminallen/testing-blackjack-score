require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["10♦", "J♥"]) }
  # You can add more sample hands

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "passes" do
      # Use the RSpec keyword `expect`, as it appears below, to test your assertions
      expect(1).to eq(1)
    end

    it "fails" do
      expect(false).to eq true
    end

    it "should be twenty" do
      expect(hand.calculate_hand).to eq(20)
    end

    it "should equal 19" do
      expect(Hand.new(["8♦", "A♥"]).calculate_hand).to eq(19)
    end

    it "should equal 12" do
      expect(Hand.new(["A♣", "A♥"]).calculate_hand).to eq(12)
    end
  end
end
