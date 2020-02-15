class PagesController < ApplicationController
  def home
  end

  def calendario
  end

  def search
  if params[:search].blank?
    redirect_to(clientes_path, alert: "Empty field!") and return
  else
    @parameter = params[:search].downcase
    @results = Cliente.all.where("lower(nombre) LIKE :search OR lower(apellido) LIKE :search OR lower(barrio) LIKE :search OR lower(CUIT) LIKE :search OR lower(correo) LIKE :search", search: "%#{@parameter}%")
  end
  end

  def searchcertificado
  if params[:search].blank?
    redirect_to(searchcertificado_path, alert: "Empty field!") and return
  else
    @parameter = params[:search].downcase
    @results_c = Certificados.all.where("lower(tratamiento) LIKE :search OR lower(id_droga) LIKE :search OR lower(id_vectores) LIKE :search OR lower(fecha_vencimientos) LIKE :search OR lower(id_cliente) LIKE :search", search: "%#{@parameter}%")
  end
  end
end
