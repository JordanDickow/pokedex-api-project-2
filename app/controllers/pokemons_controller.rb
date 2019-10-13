class PokemonsController < ProtectedController
  before_action :set_pokemon, only: %i[show update destroy]

  # GET /pokemons
  def index
    @pokemons = current_user.pokemons.all

    render json: @pokemons
  end

  # GET /pokemons/1
  def show
  @pokemon = current_user.pokemons.all
    render json: @pokemon
  end

  # POST /pokemons
  def create
    @pokemon = current_user.pokemons.build(pokemon_params)

    if @pokemon.save
      render json: @pokemon, status: :created
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemons/1
  def update
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/1
  def destroy
    @pokemon.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pokemon
    @pokemon = current_user.pokemons.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
