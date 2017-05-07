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

    it "raises a FixedArray::OutOfBoundsException" do
      stack.push("first")
      stack.push("second")
      stack.push("third")
      expect { stack.push("fourth") }.to raise_error FixedArray::OutOfBoundsException, "Error: Index out of bounds"
    end

    it "raises a FixedArray::OutOfBoundsException when popping off from an empty stack" do
      expect { stack.pop }.to raise_error Stack::StackOutOfBounds, "Error: Stack is empty"
    end

    it "pops off the last addition to the stack" do
      stack.push("first")
      stack.push("second")
      expect(stack.pop).to eq("second")
    end

    it "checks that the stack is empty" do
      stack.push("first")
      stack.pop
      stack.push("second")
      stack.pop
      expect(stack.empty?).to be(true)
    end

    it "checks that the stack is empty" do
      stack.push("first")
      stack.pop
      expect(stack.empty?).to be(true)
    end

    it "checks that the stack is not empty" do
      stack.push("first")
      expect(stack.empty?).to be(false)
    end

    it "raises an error when stack is empty and top is called" do
      expect { stack.top }.to raise_error Stack::StackOutOfBounds, "Error: Stack is empty"
    end

    it "returns the top element of the stack when calling Stack#top" do
      stack.push("first")
      stack.push("second")
      expect(stack.top).to eq("second")
    end

    it "doesn't affect the count of stack when calling Stack#top" do
      stack.push("first")
      stack.push("second")
      stack.top
      expect(stack.length).to eq(2)
    end

  end

end
