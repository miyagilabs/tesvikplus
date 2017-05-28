class SciJournal < ActiveRecord::Base
    def self.search(search)
        if search
            where('title LIKE ?', "%#{search}%")
        else
            SciJournal.all
        end
    end
end
