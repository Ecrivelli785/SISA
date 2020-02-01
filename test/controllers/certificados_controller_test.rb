require 'test_helper'

class CertificadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certificado = certificados(:one)
  end

  test "should get index" do
    get certificados_url
    assert_response :success
  end

  test "should get new" do
    get new_certificado_url
    assert_response :success
  end

  test "should create certificado" do
    assert_difference('Certificado.count') do
      post certificados_url, params: { certificado: { cliente_id: @certificado.cliente_id, droga_usada: @certificado.droga_usada, estado: @certificado.estado, fecha_aplicacion: @certificado.fecha_aplicacion, fecha_vencimiento: @certificado.fecha_vencimiento, hora_aplicacion: @certificado.hora_aplicacion, id_certificado: @certificado.id_certificado, id_cliente: @certificado.id_cliente, importe: @certificado.importe, nro_certificado: @certificado.nro_certificado, otra_droga_usada: @certificado.otra_droga_usada, otro_tratamiento: @certificado.otro_tratamiento, otros_vectores: @certificado.otros_vectores, proximo_tratamiento: @certificado.proximo_tratamiento, rubro: @certificado.rubro, superficie_tratada: @certificado.superficie_tratada, tratamiento: @certificado.tratamiento, vectores_tratados: @certificado.vectores_tratados, veneno_clase: @certificado.veneno_clase } }
    end

    assert_redirected_to certificado_url(Certificado.last)
  end

  test "should show certificado" do
    get certificado_url(@certificado)
    assert_response :success
  end

  test "should get edit" do
    get edit_certificado_url(@certificado)
    assert_response :success
  end

  test "should update certificado" do
    patch certificado_url(@certificado), params: { certificado: { cliente_id: @certificado.cliente_id, droga_usada: @certificado.droga_usada, estado: @certificado.estado, fecha_aplicacion: @certificado.fecha_aplicacion, fecha_vencimiento: @certificado.fecha_vencimiento, hora_aplicacion: @certificado.hora_aplicacion, id_certificado: @certificado.id_certificado, id_cliente: @certificado.id_cliente, importe: @certificado.importe, nro_certificado: @certificado.nro_certificado, otra_droga_usada: @certificado.otra_droga_usada, otro_tratamiento: @certificado.otro_tratamiento, otros_vectores: @certificado.otros_vectores, proximo_tratamiento: @certificado.proximo_tratamiento, rubro: @certificado.rubro, superficie_tratada: @certificado.superficie_tratada, tratamiento: @certificado.tratamiento, vectores_tratados: @certificado.vectores_tratados, veneno_clase: @certificado.veneno_clase } }
    assert_redirected_to certificado_url(@certificado)
  end

  test "should destroy certificado" do
    assert_difference('Certificado.count', -1) do
      delete certificado_url(@certificado)
    end

    assert_redirected_to certificados_url
  end
end
