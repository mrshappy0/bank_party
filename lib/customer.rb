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

    def accounts
        Account.all.select do |account|
            account.customer == self
        end
    end

    def bank_names
        names = accounts.map do |account|
            account.bank.name
        end
        names.uniq
    end
end