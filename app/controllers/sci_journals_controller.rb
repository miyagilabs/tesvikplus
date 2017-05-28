class SciJournalsController < ApplicationController
    def index
        if params[:filter]
            if params[:quicklook]
                render plain: SciJournal.search(params[:filter]).count()
                return
            end
        else
            #@journals = Journal.all.paginate(page: params[:page], per_page: 10)
            @total_count = SciJournal.all.count
        end
    end
end
