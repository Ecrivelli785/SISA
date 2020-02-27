class CertificadosController < ApplicationController
  before_action :set_certificado, only: [:show, :edit, :update, :destroy, :searchcertificado]

  # GET /certificados
  # GET /certificados.json
  def index
    @certificados = Certificado.all.order(:created_at)
  end

​  # GET /certificados/1
  # GET /certificados/1.json
  def show
    @certificado = Certificado.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'certificados/pdf', pdf: 'Reporte' }
    end
  end

  # GET /certificados/new
  def new
    @certificado = Certificado.new
  end

  # GET /certificados/1/edit
  def edit
  end

​  # POST /certificados
  # POST /certificados.json
  def create
    @certificado = Certificado.new(certificado_params)
    @certificado.update estado: true

    respond_to do |format|
      if @certificado.save!
        format.html { redirect_to @certificado, notice: 'Certificado was successfully created.' }
        format.json { render :show, status: :created, location: @certificado }
      else
        format.html { render :new }
        format.json { render json: @certificado.errors, status: :unprocessable_entity }
      end
    end
  end

​  # PATCH/PUT /certificados/1
  # PATCH/PUT /certificados/1.json
  def update
    respond_to do |format|
      if @certificado.update(certificado_params)
        format.html { redirect_to @certificado, notice: 'EL certificado fue actualizado' }
        format.json { render :show, status: :ok, location: @certificado }
      else
        format.html { render :edit }
        format.json { render json: @certificado.errors, status: :unprocessable_entity }
      end
    end
  end

​  # DELETE /certificados/1
  # DELETE /certificados/1.json
  # BAJA LOGICA DE CERTFICADO, NO ELIMINA EL REGISTRO DE LA BD SINO QUE CAMBIA EL ESTADO A FALSE
  def destroy
    @certificado.update estado: false
    respond_to do |format|
      format.html { redirect_to certificados_url, notice: 'El Certificado fue eliminado' }
      format.json { head :no_content }
    end
  end

  #  @certificados_c = Certificado.joins(:cliente)

private

  def set_certificado
    @certificado = Certificado.find(params[:id])
  end

​    # Never trust parameters from the scary internet, only allow the white list through.
    def certificado_params
      params.require(:certificado).permit(:id, :nro_certificado, :id_rubro, :id_tratamiento, :id_vector, :vector_tipo, :superficie, :fecha_aplicacion, :fecha_vencimiento, :hora_aplicacion, :proximo_tratamiento, :estado, :observaciones_certificado, :codigo, :droga_tipo, :tratamiento_tipo, :id_cliente, cliente_attributes: [:cliente_id, :apellido, :client_type, :nombre, :domicilio, :telefono, :celular, :barrio, :estado, :id_rubro, :cuit, :correo])
    end
end
