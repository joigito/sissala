require 'test_helper'

class TurnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turno = turnos(:one)
  end

  test "should get index" do
    get turnos_url
    assert_response :success
  end

  test "should get new" do
    get new_turno_url
    assert_response :success
  end

  test "should create turno" do
    assert_difference('Turno.count') do
      post turnos_url, params: { turno: { fecha: @turno.fecha, horario: @turno.horario, responsable_id: @turno.responsable_id, solicitado: @turno.solicitado } }
    end

    assert_redirected_to turno_url(Turno.last)
  end

  test "should show turno" do
    get turno_url(@turno)
    assert_response :success
  end

  test "should get edit" do
    get edit_turno_url(@turno)
    assert_response :success
  end

  test "should update turno" do
    patch turno_url(@turno), params: { turno: { fecha: @turno.fecha, horario: @turno.horario, responsable_id: @turno.responsable_id, solicitado: @turno.solicitado } }
    assert_redirected_to turno_url(@turno)
  end

  test "should destroy turno" do
    assert_difference('Turno.count', -1) do
      delete turno_url(@turno)
    end

    assert_redirected_to turnos_url
  end
end
