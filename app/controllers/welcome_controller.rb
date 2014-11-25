class WelcomeController < ApplicationController
 
  def index
		@entries= Entry.all
  end

	def create
		entry_params=params["entry"].permit("NGO","Name","Position","Address","Email")
		entry=Entry.create(entry_params)
		redirect_to(entry_path(entry))	
	end

	def show 
		@entry = Entry.find(params["id"])
	end

	def edit
		@entry=Entry.find(params["id"])
	end

	def update
		entry_params = params["entry"].permit("NGO","Name","Position","Address","Email")
		entry = Entry.find(params["id"])
		entry.update(entry_params)
		redirect_to(entry_path(entry))
	end

end
