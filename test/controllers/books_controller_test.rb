require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { autor: @book.autor, categoria: @book.categoria, claveinterna: @book.claveinterna, editorial: @book.editorial, ejemplar: @book.ejemplar, isbn: @book.isbn, provider_id: @book.provider_id, tema: @book.tema }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { autor: @book.autor, categoria: @book.categoria, claveinterna: @book.claveinterna, editorial: @book.editorial, ejemplar: @book.ejemplar, isbn: @book.isbn, provider_id: @book.provider_id, tema: @book.tema }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
