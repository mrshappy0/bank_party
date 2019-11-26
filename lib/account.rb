class Account
    attr_reader :number,
                :balance,
                :bank,
                :customer

    @@all = []
    
    def initialize(number, balance, bank, customer)
        @number = number
        @balance = balance
        @bank = bank
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end
end