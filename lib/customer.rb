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

    def banks
        names = accounts.map do |account|
            account.bank.name
        end
        names.uniq
    end

    def new_account(acct_number, acct_balance, bank)
        Account.new(acct_number, acct_balance, bank, self)
    end

    def self.average_number_of_accounts
        number_of_accounts = Customer.all.reduce(0) do |total, customer|
            total + customer.accounts.count
        end
        avg = (number_of_accounts.to_f / all.length)
        avg.round(2)
        #####
        # act_count = Customer.all.map do |customer|
        #     customer.accounts.count
        # end
        # (act_count.sum / all.length.to_f).round(2)
    end
end