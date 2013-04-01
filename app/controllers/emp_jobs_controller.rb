class EmpJobsController < ApplicationController
  # GET /emp_jobs
  # GET /emp_jobs.json
  def index
    @emp_jobs = EmpJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emp_jobs }
    end
  end

  # GET /emp_jobs/1
  # GET /emp_jobs/1.json
  def show
    @emp_job = EmpJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emp_job }
    end
  end

  # GET /emp_jobs/new
  # GET /emp_jobs/new.json
  def new
    @emp_job = EmpJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emp_job }
    end
  end

  # GET /emp_jobs/1/edit
  def edit
    @emp_job = EmpJob.find(params[:id])
  end

  # POST /emp_jobs
  # POST /emp_jobs.json
  def create
    @emp_job = EmpJob.new(params[:emp_job])

    respond_to do |format|
      if @emp_job.save
        format.html { redirect_to @emp_job, notice: 'Emp job was successfully created.' }
        format.json { render json: @emp_job, status: :created, location: @emp_job }
      else
        format.html { render action: "new" }
        format.json { render json: @emp_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emp_jobs/1
  # PUT /emp_jobs/1.json
  def update
    @emp_job = EmpJob.find(params[:id])

    respond_to do |format|
      if @emp_job.update_attributes(params[:emp_job])
        format.html { redirect_to @emp_job, notice: 'Emp job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emp_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_jobs/1
  # DELETE /emp_jobs/1.json
  def destroy
    @emp_job = EmpJob.find(params[:id])
    @emp_job.destroy

    respond_to do |format|
      format.html { redirect_to emp_jobs_url }
      format.json { head :no_content }
    end
  end
end
