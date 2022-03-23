class Company < ActiveRecord::Base
 has_many :freebies
has_many :devs, through: :freebies

def oldest_company
    self.name.min(:founding_year)
end

def give_freebie(dev, item_name, value)
    self.freebies.create(dev:dev, item_name:item_name, value:value)
end


end
