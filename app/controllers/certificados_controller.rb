class CertificadosController < ApplicationController
  before_action :set_certificado, only: [:show, :edit, :update, :destroy, :searchcertificado]

  # GET /certificados
  # GET /certificados.json
  def index
    @certificados = Certificado.all

  end

  # GET /certificados/1
  # GET /certificados/1.json
  def show

  end

  # GET /certificados/new
  def new
    @certificado = Certificado.new
  end

  # GET /certificados/1/edit
  def edit
  end

  # POST /certificados
  # POST /certificados.json
  def create
    @certificado = Certificado.new(certificado_params)

    respond_to do |format|
      if @certificado.save
        format.html { redirect_to @certificado, notice: 'Certificado was successfully created.' }
        format.json { render :show, status: :created, location: @certificado }
      else
        format.html { render :new }
        format.json { render json: @certificado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificados/1
  # PATCH/PUT /certificados/1.json
  def update
    respond_to do |format|
      if @certificado.update(certificado_params)
        format.html { redirect_to @certificado, notice: 'Certificado was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificado }
      else
        format.html { render :edit }
        format.json { render json: @certificado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificados/1
  # DELETE /certificados/1.json
  # BAJA LOGICA DE CERTFICADO, NO ELIMINA EL REGISTRO DE LA BD SINO QUE CAMBIA EL ESTADO A FALSE 
  def destroy
    @certificado.update estado: false
    respond_to do |format|
      format.html { redirect_to certificados_url, notice: 'El Certificado fue eliminado' }
      format.json { head :no_content }
    end
  end

  def join_cc
    #SELECT *
#FROM certificados
#INNER JOIN clientes
#ON certificados.id_cliente=clientes.id_cliente

    @certificados_c = Certificados.joins(:clientes).where(certificados: { id_cliente:  10})
    Certificados.joins(:tipos_clientes, :tratamientos, :vectores, :drogas)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificado
      @certificado = Certificado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificado_params
      params.require(:certificado).permit(:id, :nro_certificado, :id_rubro, :id_tratamiento, :id_vector, :superficie, :fecha_aplicacion, :fecha_vencimiento, :hora_aplicacion, :proximo_tratamiento, :estado, :observaciones_certificado, :codigo, :id_cliente, :id_drogas, cliente_attributes: [:id_cliente, :apellido, :nombre, :domicilio, :telefono, :celular, :barrio, :estado, :id_rubro, :cuit, :correo])
    end
end
