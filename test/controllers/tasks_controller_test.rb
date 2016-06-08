require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  def setup
    @task = create :task
    @attrs = attributes_for :task
  end

  def test_index
    get :index
    assert_response :success
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    post :create, task: @attrs
    assert_response :redirect
    task = Task.find_by(@attrs)
    assert { task.title == @attrs[:title] }
  end

  def test_show
    get :show, id: @task.id
    assert_response :success
  end

  def test_edit
    get :edit, id: @task.id
    assert_response :success
  end

  def test_update
    put :update, id: @task.id, task: @attrs
    assert_response :redirect
  end

  def test_destroy
    assert { Task.where(id: @task.id).present? }
    delete :destroy, id: @task.id
    assert_response :redirect
    assert { Task.where(id: @task.id).empty? }
  end
end