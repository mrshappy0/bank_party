class Customer
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def accts
        Account.all.select {|account| account.customer == self}
    end

    def banks
        accts.map {|account| account.bank.name}.uniq
    end

    def new_account (number, balance, bank)
       Account.new(number, balance, bank, self) 
    end
    
end