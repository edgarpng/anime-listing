class AnimeController < ApplicationController
	def index
		@anime_listing = Anime.all
	end

	def new
		@anime = Anime.new
	end

	def edit
		@anime = Anime.find(params[:id])
	end

	def create
		@anime = Anime.new(params[:anime])
		if @anime.save
			redirect_to anime_index_path
		else
			render :action => 'new'
		end
	end

	def show
	end

	def update
		@anime = Anime.find(params[:id])
		 
		respond_to do |format|
			if @anime.update_attributes(params[:anime])
				format.html  { redirect_to anime_index_path,
				:notice => 'Anime was successfully updated.' }
			else
				format.html  { render :action => "edit" }
				format.json  { render :json => @anime.errors,
				:status => :unprocessable_entity }
			end
		end
	end

	def destroy
		@anime = Anime.find(params[:id])
		@anime.destroy
		redirect_to anime_index_path
	end
end
