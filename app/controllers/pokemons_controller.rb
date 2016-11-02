class PokemonsController < ApplicationController
  #def index
   # @pokemons = Pokemon.all
  #end

  #def show
 #   @pokemon = Pokemon.find(params[:id])
 # end

  def capture
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.trainer = current_trainer
  	@pokemon.save
  	redirect_to '/'
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	if @pokemon.health <= 0
      flash[:success] = "Dead pokemon"
  		@pokemon.destroy
  	else
      @pokemon.save
    end
  	redirect_to trainer_path(id: @pokemon.trainer)
  end

  def new
    @pokemon = Pokemon.new
  end

  def pokemon_info
  	params.require(:pokemon).permit(:name)
  end

  def create
  	 @pokemon = Pokemon.new(pokemon_info)
        @pokemon.level = 1
        @pokemon.health = 100
        @pokemon.trainer_id = current_trainer.id

        if @pokemon.save
            redirect_to trainer_path(current_trainer.id)
        else
            redirect_to new_pokemon_path
            flash[:error] = @pokemon.errors.full_messages.to_sentence
        end
  end

end
