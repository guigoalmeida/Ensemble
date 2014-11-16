class WelcomeController < ApplicationController
  def index
@entries= Entry.all
  end
def create
	entry_params=params["entry"].permit("NGO","Name","Position","Address","Email")
	entry=Entry.create(entry_params)
redirect_to(entry_path(entry))	
end

def edit
	@entry=Entry.find(params["id"])
end


end
