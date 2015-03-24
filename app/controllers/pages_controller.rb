class PagesController < ApplicationController
	def show
		render view: @page
	end
end