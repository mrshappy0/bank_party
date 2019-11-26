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
        end.uniq
    end

    def customer_count
        customers.count
    end

    def new_account(acct_number, acct_balance, customer)
        Account.new(acct_number, acct_balance, self, customer)
    end

    def oldest_account
        accounts.min_by do |account|
            account.open_year
        end
    end

    def self.most_customers
        max_bank = all.max_by do |bank|
            bank.customer_count
        end
        "#{max_bank.name} has #{max_bank.customer_count} customers"
    end

    def self.customer_count
        bank_customers = {}
        Bank.all.each do |bank|
            bank_customers[bank.name] = bank.customer_count
        end
        bank_customers
    end
end 
