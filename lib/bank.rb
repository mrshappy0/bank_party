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
        Account.all.select do |account|
            account.bank == self
        end
    end

    def customers
        accounts.map do |account|
            account.customer
        end
    end
    

end