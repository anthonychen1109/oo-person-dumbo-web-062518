class Person

  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness
  attr_writer :happiness

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  # def happiness=(update_happiness)
  #   self.happiness = update_happiness
  # end

  # def hygiene=(update_hygiene)
  #
  # end
  def clean?(hygiene)
    hygiene > 7
  end

  def happy?(happiness)
    happiness > 7
  end

end

Bob = Person.new("Bob")
# puts Bob.happiness
