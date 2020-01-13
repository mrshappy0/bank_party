class Account
    attr_reader :number, 
                :balance, 
                :bank, 
                :customer, 
                :open_year
    
    @@all = []

        def initialize(number, balance, bank, customer, open_year = 2020)
            @number = number
            @balance = balance
            @customer = customer
            @bank = bank
            @open_year = open_year          
            @@all << self
        end

        def self.all
            @@all
        end

end