class Journal < ActiveRecord::Base
    def self.search(search)
        if search
            where('title LIKE ?', "%#{search}%")
        else
            Journal.all
        end
    end
end
