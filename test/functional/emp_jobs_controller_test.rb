require 'test_helper'

class EmpJobsControllerTest < ActionController::TestCase
  setup do
    @emp_job = emp_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_job" do
    assert_difference('EmpJob.count') do
      post :create, emp_job: { EmpID: @emp_job.EmpID, JobID: @emp_job.JobID }
    end

    assert_redirected_to emp_job_path(assigns(:emp_job))
  end

  test "should show emp_job" do
    get :show, id: @emp_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_job
    assert_response :success
  end

  test "should update emp_job" do
    put :update, id: @emp_job, emp_job: { EmpID: @emp_job.EmpID, JobID: @emp_job.JobID }
    assert_redirected_to emp_job_path(assigns(:emp_job))
  end

  test "should destroy emp_job" do
    assert_difference('EmpJob.count', -1) do
      delete :destroy, id: @emp_job
    end

    assert_redirected_to emp_jobs_path
  end
end
