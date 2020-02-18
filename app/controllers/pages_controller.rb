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
    @results = Cliente.all.where("lower(nombre) LIKE :search OR lower(apellido) LIKE :search OR lower(domicilio) LIKE :search OR lower(barrio) LIKE :search OR lower(telefono) LIKE :search OR lower(CUIT) LIKE :search OR lower(correo) LIKE :search", search: "%#{@parameter}%")
  end
  end


  def searchcertificado
    if params[:search].blank?
      redirect_to(certificados_path, alert: "Empty field!") and return
    else
    @parameter = params[:search].downcase
    @results = Certificado.all.where("lower(superficie) LIKE :search", search: "%#{@parameter}%")
    end
  end

  def searchtecnico
    if params[:search].blank?
      redirect_to(tecnicos_path, alert: "Empty field!") and return
    else
    @parameter = params[:search].downcase
    @results = Tecnico.all.where("lower(nombre) LIKE :search OR lower(apellido) LIKE :search OR lower(domicilio) LIKE :search", search: "%#{@parameter}%")
  end
end
end

users.where(users[:id].matches(str)).to_sql #=> "SELECT FROM `users`  WHERE `users`.`id` LIKE 'foo'"
