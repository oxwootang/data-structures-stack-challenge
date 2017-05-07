require_relative 'stack'

describe Stack do

  describe "let" do

    let(:stack) { Stack.new }

    it "creates a new Stack" do
      expect(stack.class).to be(Stack)
    end

    it "creates an empty Stack" do
      expect(stack.empty?).to be(true)
    end

    it "pushes to the Stack" do
      stack.push("first")
      expect(stack.stack.get(0)).to eq("first")
    end

    it "pushes to the Stack" do
      stack.push("first")
      stack.push("second")
      expect(stack.stack.get(1)).to eq("second")
    end

    it "raises an FixedArray::OutOfBoundsException" do
      stack.push("first")
      stack.push("second")
      stack.push("third")
      expect { stack.push("fourth") }.to raise_error FixedArray::OutOfBoundsException, "Error: Index out of bounds"
    end

  end

end
