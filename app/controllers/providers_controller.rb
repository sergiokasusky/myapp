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
  
  def edit
    @provider = Provider.find(params[:id])
  end
  
  def update
    @provider = Provider.find(params[:id])
 
    if @provider.update(provider_params)
      redirect_to @provider
    else
      render 'edit'
    end
  end
  
  def index
    @providers = Provider.all
  end
  
  def about
    provider= Provider.new()
    provider.nombre_comercial= "Nombre comercial insertado manualmente"
    provider.nombre_contacto= "Nombre contacto insertado manualmente"
    provider.email= "email insertado manualmente"
    provider.password= "password insertado manualmente"
    provider.save
  end

  def empresasunicas
     #@providers = Provider.all
     @providers= Provider.select("DISTINCT(NOMBRE_COMERCIAL)")
  end
  
  private #se requiere indicar en cada controlador los parámetros permitidos
    def provider_params
      params.require(:provider).permit(:nombre_comercial, :nombre_contacto, :email, :password)
    end

end
