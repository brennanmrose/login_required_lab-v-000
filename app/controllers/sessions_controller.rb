class SessionsController < ApplicationController

	def new
	end

	def create
		session[:name] = params[:name]
		if session[:name].nil? || session[:name] == ''
			redirect_to '/sessions/new'
		else
			render :welcome
		end
	end

	def destroy
		session.delete :name
		redirect_to '/'
	end

end