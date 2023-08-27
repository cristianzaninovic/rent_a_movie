class MoviesController < ApplicationController
  # before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1 or /movies/1.json
  def show
    @movie = Movie.find(params[:id])
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    # @movie.clients.build
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
    # @movie.clients.build if @movie.clients.empty?
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)
  
    # Iterate through client_attributes to handle both new and existing clients
    # @movie.clients.each do |client_attributes|
    #   client_action = client_attributes[:client_action]
    #   if client_action == 'new'
    #     @movie.clients.build(name: client_attributes[:name], email: client_attributes[:email])
    #   elsif client_action == 'existing'
    #     client_id = client_attributes[:client_id]
    #     if client_id.present?
    #       @movie.clients << Client.find(client_id)
    #     end
    #   end
    # end

    respond_to do |format|
      if @movie.save
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    @movie = Movie.find(params[:id])
    # Iterate through client_attributes to handle both new and existing clients
    # params[:movie_client_fields].each do |client_attributes|
    #   unless client_attributes[:id].nil?       
    #     # @movie.clients << Client.find(client_attributes[:id])
    #     @client = Client.find(client_attributes[:id])
    #     client_attributes[:movie_id] = @movie.id
    #     @client.update(client_attributes)
    #   else
    #     # @movie.clients.build(name: client_attributes[:name], email: client_attributes[:email])  
    #     @client = Client.new(client_attributes)
    #     @client.save
    #   end
    # end      
    # params[:movie][:clients].delete(:_client_action)
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end  
  end    

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie = params[:id].nil? ? Movie.new : Movie.find(params[:id])
    @client = @movie.clients.build

    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def existing_client_fields
    @movie = params[:id].nil? ? Movie.new : Movie.find(params[:id])
    @movie.clients.build
    # render partial: 'existing_client_fields', locals: { ff: @movie, f: @client }
    render partial: 'existing_client_fields'
  end

  def new_client_fields
    @movie = params[:id].nil? ? Movie.new : Movie.find(params[:id])
    # @client = @movie.clients.build
    @movie.clients.build
    render partial: 'new_client_fields'
  end
  
  private
    def movie_params
    # Only allow a list of trusted parameters through.
      params.require(:movie).permit(:title, :synopsis, :director, :protagonist, :year, 
                                    clients_attributes: [:id, :name, :email, :movie_id, :_destroy])
    end
end
