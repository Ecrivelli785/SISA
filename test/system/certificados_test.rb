require "application_system_test_case"

class CertificadosTest < ApplicationSystemTestCase
  setup do
    @certificado = certificados(:one)
  end

  test "visiting the index" do
    visit certificados_url
    assert_selector "h1", text: "Certificados"
  end

  test "creating a Certificado" do
    visit certificados_url
    click_on "New Certificado"

    fill_in "Cliente", with: @certificado.cliente_id
    fill_in "Droga usada", with: @certificado.droga_usada
    fill_in "Estado", with: @certificado.estado
    fill_in "Fecha aplicacion", with: @certificado.fecha_aplicacion
    fill_in "Fecha vencimiento", with: @certificado.fecha_vencimiento
    fill_in "Hora aplicacion", with: @certificado.hora_aplicacion
    fill_in "Id certificado", with: @certificado.id_certificado
    fill_in "Id cliente", with: @certificado.id_cliente
    fill_in "Importe", with: @certificado.importe
    fill_in "Nro certificado", with: @certificado.nro_certificado
    fill_in "Otra droga usada", with: @certificado.otra_droga_usada
    fill_in "Otro tratamiento", with: @certificado.otro_tratamiento
    fill_in "Otros vectores", with: @certificado.otros_vectores
    fill_in "Proximo tratamiento", with: @certificado.proximo_tratamiento
    fill_in "Rubro", with: @certificado.rubro
    fill_in "Superficie tratada", with: @certificado.superficie_tratada
    fill_in "Tratamiento", with: @certificado.tratamiento
    fill_in "Vectores tratados", with: @certificado.vectores_tratados
    fill_in "Veneno clase", with: @certificado.veneno_clase
    click_on "Create Certificado"

    assert_text "Certificado was successfully created"
    click_on "Back"
  end

  test "updating a Certificado" do
    visit certificados_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @certificado.cliente_id
    fill_in "Droga usada", with: @certificado.droga_usada
    fill_in "Estado", with: @certificado.estado
    fill_in "Fecha aplicacion", with: @certificado.fecha_aplicacion
    fill_in "Fecha vencimiento", with: @certificado.fecha_vencimiento
    fill_in "Hora aplicacion", with: @certificado.hora_aplicacion
    fill_in "Id certificado", with: @certificado.id_certificado
    fill_in "Id cliente", with: @certificado.id_cliente
    fill_in "Importe", with: @certificado.importe
    fill_in "Nro certificado", with: @certificado.nro_certificado
    fill_in "Otra droga usada", with: @certificado.otra_droga_usada
    fill_in "Otro tratamiento", with: @certificado.otro_tratamiento
    fill_in "Otros vectores", with: @certificado.otros_vectores
    fill_in "Proximo tratamiento", with: @certificado.proximo_tratamiento
    fill_in "Rubro", with: @certificado.rubro
    fill_in "Superficie tratada", with: @certificado.superficie_tratada
    fill_in "Tratamiento", with: @certificado.tratamiento
    fill_in "Vectores tratados", with: @certificado.vectores_tratados
    fill_in "Veneno clase", with: @certificado.veneno_clase
    click_on "Update Certificado"

    assert_text "Certificado was successfully updated"
    click_on "Back"
  end

  test "destroying a Certificado" do
    visit certificados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Certificado was successfully destroyed"
  end
end
