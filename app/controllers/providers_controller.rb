class ProvidersController < ApplicationController
  
  def new
  end
  
  def create
    provider= Provider.new(provider_params)
    provider.save
    redirect_to provider
  end
  
  def show
    @provider = Provider.find(params[:id])
  end
  
  def index
    @providers = Provider.all
  end
  
  private #se requiere indicar en cada controlador los parámetros permitidos
    def provider_params
      params.require(:provider).permit(:nombre_comercial, :nombre_contacto, :email, :password)
    end

end
