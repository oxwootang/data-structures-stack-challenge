require_relative 'fixed_array'

describe FixedArray do

  describe "let" do
    let(:fixedArray) { FixedArray.new(10) }

    it "creates a new FixedArray of size 10" do
      expect(fixedArray.size).to eq 10
    end

    it "raises an error if index is out of bounds for FixedArray#get" do
      expect { fixedArray.get(11) }.to raise_error 'OutOfBoundsException'
    end

    it "raises an error if index is out of bounds for FixedArray#set" do
      expect { fixedArray.set(-4, "boo") }.to raise_error 'OutOfBoundsException'
    end

    it "sets the value at the index in the FixedArray and returns it" do
      fixedArray.set(5, "Index 5")
      expect(fixedArray.get(5)).to eq("Index 5")
    end

    it "returns nil for unset element" do
      expect(fixedArray.get(0)).to eq nil
    end

  end

end
