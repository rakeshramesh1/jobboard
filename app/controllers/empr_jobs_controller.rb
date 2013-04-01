class EmprJobsController < ApplicationController
  # GET /empr_jobs
  # GET /empr_jobs.json
  def index
    @empr_jobs = EmprJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empr_jobs }
    end
  end

  # GET /empr_jobs/1
  # GET /empr_jobs/1.json
  def show
    @empr_job = EmprJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empr_job }
    end
  end

  # GET /empr_jobs/new
  # GET /empr_jobs/new.json
  def new
    @empr_job = EmprJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empr_job }
    end
  end

  # GET /empr_jobs/1/edit
  def edit
    @empr_job = EmprJob.find(params[:id])
  end

  # POST /empr_jobs
  # POST /empr_jobs.json
  def create
    @empr_job = EmprJob.new(params[:empr_job])

    respond_to do |format|
      if @empr_job.save
        format.html { redirect_to @empr_job, notice: 'Empr job was successfully created.' }
        format.json { render json: @empr_job, status: :created, location: @empr_job }
      else
        format.html { render action: "new" }
        format.json { render json: @empr_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /empr_jobs/1
  # PUT /empr_jobs/1.json
  def update
    @empr_job = EmprJob.find(params[:id])

    respond_to do |format|
      if @empr_job.update_attributes(params[:empr_job])
        format.html { redirect_to @empr_job, notice: 'Empr job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @empr_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empr_jobs/1
  # DELETE /empr_jobs/1.json
  def destroy
    @empr_job = EmprJob.find(params[:id])
    @empr_job.destroy

    respond_to do |format|
      format.html { redirect_to empr_jobs_url }
      format.json { head :no_content }
    end
  end
end
