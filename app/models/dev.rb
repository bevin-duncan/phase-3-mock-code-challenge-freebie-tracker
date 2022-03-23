class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

  def recieved_one?(item_name)
    self.item_name == item_name ? true : false
end

def give_away(dev, freebie)
    self.freebie.update(dev:dev) freebie.dev == !dev
end
end
