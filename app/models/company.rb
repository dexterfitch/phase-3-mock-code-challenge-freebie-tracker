class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(provided_dev_instance, provided_item_name, provided_value_of_item)
        Freebie.create(item_name: provided_item_name, value: provided_value_of_item, company_id: self.id, dev_id: provided_dev_instance.id)
    end

    def self.oldest_company
        self.order(:founding_year).first
    end
end
