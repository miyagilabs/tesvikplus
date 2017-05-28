class SciSearchController < ApplicationController
  def index
    @sci_journals = SciJournal.search(params[:filter])
                              .paginate(:per_page => 100,
                                        :page => params[:page])
    ##@total_count = @journals.total_entries
    #render :partial => 'filter_partial'
    #render :action => "filtered"
    #return
  end
end
