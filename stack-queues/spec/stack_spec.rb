require 'stack'


describe Stack do
  before do
    @stack = Stack.new(2)
  end

  describe '#capacity' do
    context 'a new stack has a capacity' do
      it 'returns the maximum size of a stack' do
        expect(@stack.capacity).to eq 2
      end
    end
  end

  describe '#length' do
    context 'a new stack has no items' do
      it 'returns the number of items in the stack' do
        expect(@stack.length).to eq 0
      end
    end
  end

  describe '#empty?' do
    context 'stack is empty' do
      it 'returns true' do
        expect(@stack.empty?).to eq true
      end
    end

    context 'stack is not empty' do
      it 'returns false' do
        @stack.container << 2

        expect(@stack.empty?).to eq false
      end
    end
  end

  describe '#push' do
    context '' do
      it 'adds item to stack' do
        @stack.push(2)

        expect(@stack.container).to eq [2]
      end
    end

    context 'past capacity' do
      it 'raises error' do
        @stack.push(2)
        @stack.push(3)

        expect { @stack.push(4) }.to raise_error StackOverflow
      end
    end
  end

  describe '#pop' do
    context 'an item is popped' do
      it 'returns and deletes last item' do
        @stack.push(2)
        @stack.push(3)

        expect(@stack.pop).to eq 3
        expect(@stack.peek).to eq 2
      end
    end

    context 'an item is popped on an empty stack' do
      it 'raises an error' do
        expect { @stack.pop }.to raise_error StackUnderflow
      end
    end
  end

  describe '#peek' do
    context 'when a stack has items' do
      it 'returns the value of the top item' do
        @stack.push(2)
        @stack.push(3)

        expect(@stack.peek).to eq 3
      end
    end
  end
end
