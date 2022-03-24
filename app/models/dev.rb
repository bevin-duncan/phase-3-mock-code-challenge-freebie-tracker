class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

  def recieved_one?(item_name)
    # self.item_name == item_name ? true : false
    item = self.freebies.find_by(item_name: item_name)
    item ? true: false 
end

def give_away(dev, freebie)
    if self.recieved_one?(freebie.item_name)
    end

    # self.freebies.update(dev:dev) freebie.dev == !dev
end
end
