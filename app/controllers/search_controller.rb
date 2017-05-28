class SearchController < ApplicationController
  def index
    @journals = Journal.search(params[:filter])
                           .order("payout desc")
                           .paginate(:per_page => 100,
                                     :page => params[:page])
    ##@total_count = @journals.total_entries
    #render :partial => 'filter_partial'
    #render :action => "filtered"
    #return
  end
end
