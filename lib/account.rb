class Account
    attr_reader :number,
                :balance,
                :bank,
                :customer,
                :open_year

    @@all = []
    
    def initialize(number, balance, bank, customer, open_year=2019)
        @number = number
        @balance = balance
        @bank = bank
        @customer = customer
        @open_year = open_year
        @@all << self
    end

    def self.all
        @@all
    end
end