class IssueListsController < ApplicationController
  # GET /issue_lists
  # GET /issue_lists.json
  def index
    @issue_lists = IssueList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @issue_lists }
    end
  end

  # GET /issue_lists/1
  # GET /issue_lists/1.json
  def show
    @issue_list = IssueList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issue_list }
    end
  end

  # GET /issue_lists/new
  # GET /issue_lists/new.json
  def new
    @issue_list = IssueList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issue_list }
    end
  end

  # GET /issue_lists/1/edit
  def edit
    @issue_list = IssueList.find(params[:id])
  end

  # POST /issue_lists
  # POST /issue_lists.json
  def create
    @issue_list = IssueList.new(params[:issue_list])

    respond_to do |format|
      if @issue_list.save
        format.html { redirect_to @issue_list, notice: 'Issue list was successfully created.' }
        format.json { render json: @issue_list, status: :created, location: @issue_list }
      else
        format.html { render action: "new" }
        format.json { render json: @issue_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issue_lists/1
  # PUT /issue_lists/1.json
  def update
    @issue_list = IssueList.find(params[:id])

    respond_to do |format|
      if @issue_list.update_attributes(params[:issue_list])
        format.html { redirect_to @issue_list, notice: 'Issue list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_lists/1
  # DELETE /issue_lists/1.json
  def destroy
    @issue_list = IssueList.find(params[:id])
    @issue_list.destroy

    respond_to do |format|
      format.html { redirect_to issue_lists_url }
      format.json { head :no_content }
    end
  end
end
