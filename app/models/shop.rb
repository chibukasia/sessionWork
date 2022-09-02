class Shop < ActiveRecord::Base

    def self.create_with_title(title)
        shop = Shop.create(title: title)
    end

    def self.first_shop 
        Shop.first
    end

    def self.last_shop 
        Shop.last
    end

    def self.shop_count 
        Shop.count
    end

    def self.find_shop_with_id(id) 
        Shop.find(id)
    end

    def self.find_shop_with_attributes(attr) 
        Shop.find_by(attr)
    end

    def self.find_shops_after_2002 
        Shop.where("opening_date > 2002")
    end

    def update_with_attributes(title, opening_date, owner)
        self.update(title: title, opening_date: opening_date, owner: owner )
    end 

    def self.update_all_titles(title) 
        Shop.update_all(title:title)
    end

    def self.delete_by_id(id) 
        shop = Shop.find(id) 
        shop.destroy
    end

    def self.delete_all_shops 
        Shop.destroy_all
    end
end