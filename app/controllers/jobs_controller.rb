class JobsController < ApplicationController
  
  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.

def appliedjobs
  @emp_job = EmpJob.find_by_EmpID(session[:Empid])
    respond_to do |t|
      @job = Job.find_by_JobId(t.JobId)

      respond_to do |format|
        format.html # appliedjobs.html.erb
        format.json { render json: @job }
      end
    end
end

  def job_apply
        
        @emp_job = EmpJob.new
        @emp_job.EmpID = session[:Empid] 
        @emp_job.JobID = params[:JobId]
        @emp_job.save
       redirect_to "/empshow"
  end

  def show
    if session[:usertype]=="Employer"
      redirect_to "/emprshow"
    else
      redirect_to "/empshow"
    end

  end
  def emprshow
    @empr_job = EmprJob.find_by_EmprID(session[:Empid])
    respond_to do |t|
      @job = Job.find_by_JobId(t.JobId)

      respond_to do |format|
        format.html # emprshow.html.erb
        format.json { render json: @job }
      end
    end
  end

  def empshow
    @jobs = Job.all

      respond_to do |format|
        format.html # empshow.html.erb
        format.json { render json: @job }
      end
  
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(params[:job])
    count = Job.count
    @job.JobId = count + 1
    respond_to do |format|
      if @job.save
        @empr_job = EmprJob.new
        @empr_job = EmprJob.new(params[:empr_job])
        @empr_job.EmprID = session[:Empid] 
        @empr_job.JobID =  @job.JobId
        if @empr_job.save
            format.html { redirect_to @job, notice: 'Job was successfully created.' }
            format.json { render json: @job, status: :created, location: @job }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end
end
