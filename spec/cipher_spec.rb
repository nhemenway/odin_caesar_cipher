require "cipher"

describe "#caesar_cipher" do
  context "given just a string" do
    it "raises" do
      expect { caesar_cipher("string") }.to raise_error(ArgumentError)
    end
  end
  context "given a string and number" do
    it "returns proper cipher" do
      expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
    it "matches case of input string" do
      expect(caesar_cipher("AeiOuP",3)).to eql("DhlRxS")
    end
  end
end