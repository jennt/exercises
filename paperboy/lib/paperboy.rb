class Paperboy
  attr_reader :name, :experience, :side, :earnings

  def initialize(name, experience, side, earnings)
  # def initialize(name, experience=0, side='left', earnings=0.0)
  # def initialize(name, options)
  #   paperboy= Paperboy.new('bob', side: even, earnings: 50, experience: 10)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    min_papers_to_deliver = 50
    quota = (@experience/2) + min_papers_to_deliver
  end

  def deliver(start_address, end_address)
    if start_address == 1
      papers_delivered = end_address/2
    else
      papers_delivered = (end_address - start_address)/2
    end
    @experience += papers_delivered
    amount = papers_delivered * 0.25
    @earnings = "$#{sprintf('%.2f', amount)}"
    # This method will take two house numbers and return the amount of money earned on this delivery as a floating point number. It must also update the paperboy's experience! And what should happen if start_address isn't a smaller number than the end_address?
  end

  def report
     "I'm #{name}, I've delivered #{experience} papers and I've earned #{earnings} so far!"
  end
end
