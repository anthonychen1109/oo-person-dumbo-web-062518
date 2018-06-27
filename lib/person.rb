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

  def clean?
    self.hygiene > 7
  end

  def happy?
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
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi Felix! It's Penelope. How are you?"
  end

  def start_conversation(friend, topic)
    
  end

end

Bob = Person.new("Bob")
# puts Bob.happiness
