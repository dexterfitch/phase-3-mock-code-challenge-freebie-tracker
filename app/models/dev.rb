class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(provided_item_name)
        result = nil
        self.freebies.each do |freebie|
            if freebie.item_name == provided_item_name
                result = true
            else
                result = false
            end
        end
        result
    end

    def give_away(provided_dev_instance, provided_freebie_instance)
        provided_freebie_instance.update({dev_id: provided_dev_instance.id})
        provided_freebie_instance.save
    end
end
