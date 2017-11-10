require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { customer_references: @order.customer_references, delivery_date: @order.delivery_date, is_delivered: @order.is_delivered, order_status: @order.order_status, payment: @order.payment, product_id: @order.product_id, quantity: @order.quantity, total_cost: @order.total_cost } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { customer_references: @order.customer_references, delivery_date: @order.delivery_date, is_delivered: @order.is_delivered, order_status: @order.order_status, payment: @order.payment, product_id: @order.product_id, quantity: @order.quantity, total_cost: @order.total_cost } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
