class HelloWorldController < ApplicationController
	def hello
		render text: "Hello World!"		
	end
	def index 
		redirect_to(action:"hello")
	end
end
