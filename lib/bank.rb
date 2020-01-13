class Bank
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select {|account| account.bank == self}
    end

    def customers
        accounts.map {|account| account.customer.name}
    end

    def oldest_acct
        accounts.min_by {|account| account.open_year}
    end
end 
