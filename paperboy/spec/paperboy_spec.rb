require 'paperboy'

describe Paperboy do
  paperboy = Paperboy.new('bob', 30, 'even', '$20.00')

  describe '#new' do
    context 'when creating a new paperboy' do
      it 'should have name, experience, side, earnings' do

        expect(paperboy.name).to eq 'bob'
        expect(paperboy.experience).to eq 30
        expect(paperboy.side).to eq 'even'
        expect(paperboy.earnings).to eq '$20.00'

      end
    end
  end

  describe '#quota' do
    context 'when given a paperboy with attributes' do
      it 'returns quota' do
        
        expect(paperboy.quota).to eq 65
      end
    end
  end

  describe '#deliver(start_address, end_address)' do
    context 'when given a starting and ending house #' do
      it 'will return earnings and update experience' do
        # paperboy = Paperboy.new('bob', 30, 'even', '$20.00') #quota = 65
        expect(paperboy.deliver(1,100)).to eq '$12.50'
        #50 papers delivered
        expect(paperboy.experience).to eq 80
      end
    end
  end
    # This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. It must also update the paperboy's experience! And what should happen if start_address isn't a smaller number than the end_address?
  describe '#report' do
    context '' do
      it '' do

        expect(paperboy.report). to eq "I'm bob, I've delivered 80 papers and I've earned $12.50 so far!"
      end
    end

  end
  #  This method must return a string about the paperboy's performance e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!
end
