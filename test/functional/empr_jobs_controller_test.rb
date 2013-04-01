require 'test_helper'

class EmprJobsControllerTest < ActionController::TestCase
  setup do
    @empr_job = empr_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empr_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empr_job" do
    assert_difference('EmprJob.count') do
      post :create, empr_job: { EmprID: @empr_job.EmprID, JobID: @empr_job.JobID }
    end

    assert_redirected_to empr_job_path(assigns(:empr_job))
  end

  test "should show empr_job" do
    get :show, id: @empr_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empr_job
    assert_response :success
  end

  test "should update empr_job" do
    put :update, id: @empr_job, empr_job: { EmprID: @empr_job.EmprID, JobID: @empr_job.JobID }
    assert_redirected_to empr_job_path(assigns(:empr_job))
  end

  test "should destroy empr_job" do
    assert_difference('EmprJob.count', -1) do
      delete :destroy, id: @empr_job
    end

    assert_redirected_to empr_jobs_path
  end
end
