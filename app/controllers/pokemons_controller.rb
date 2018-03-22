class PokemonsController < ApplicationController
  def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save
		redirect_to root_path
	end
  def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(current_trainer.id)
	end
  def new
		@pokemon = Pokemon.new
	end

	def create
    pokemon = Pokemon.new
    pokemon.update(params.require(:pokemon).permit(:name, :ndex))
    pokemon.trainer_id = current_trainer.id
    pokemon.ndex = params[:ndex]
    pokemon.level = 1
    pokemon.health = 100
		if pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to new_path
			flash[:error] = pokemon.errors.full_messages.to_sentence
		end
	end
end
