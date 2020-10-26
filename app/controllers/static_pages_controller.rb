class StaticPagesController < ApplicationController


	def index
		
	end

	def home
		@gossips = Gossip.all
	end

	def contact
		
	end

	def team
		
	end

	def welcome
		@gossips = Gossip.all
	end

	def gossip
		@gossip = Gossip.find(params[:number])
	end

	def author
		@author = User.all
	end

end