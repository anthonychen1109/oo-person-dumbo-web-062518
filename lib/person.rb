class Person

  attr_accessor :bank_account, :hygiene
  attr_reader :name, :happiness
  attr_writer :happiness

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def update_happiness=(update)
    if update <= 10
      self.happiness = update
    end
  end

  # def hygiene=(update_hygiene)
  #
  # end
  def clean?(hygiene)
    self.hygiene > 7
  end

  def happy?(happiness)
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

end

Bob = Person.new("Bob")
# puts Bob.happiness
