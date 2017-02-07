require 'matryoshka_doll'

describe MatryoshkaDoll do
  describe '#inner_dolls' do
    context 'when it is has no inner dolls' do
      it 'returns 0' do
        doll = MatryoshkaDoll.new

        expect(doll.inner_dolls).to eq 0
      end
    end

    context 'when it has one inner doll' do
      it 'returns 1' do
        doll = MatryoshkaDoll.new(MatryoshkaDoll.new)

        expect(doll.inner_dolls).to eq 1
      end
    end

    context 'when it has two inner dolls' do
      it 'returns 2' do
        doll = MatryoshkaDoll.new(MatryoshkaDoll.new(MatryoshkaDoll.new))

        expect(doll.inner_dolls).to eq 2
      end
    end
   end
end
