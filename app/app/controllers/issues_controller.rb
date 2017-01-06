class IssuesController < ApplicationController

	def index
		@all_issues=Issue.all
	end	
	
	def dashboard #dashboard
		render 'dashboard'
	end

	def new
    	@issue = Issue.new
 	end

 	def edit
 		@issue = Issue.find(params[:id])
 	end

 	def update
    @issue = Issue.find(params[:id])
    if @issue.update(issue_params)
    	redirect_to indexIssue_path  
    else
      render Rails.application.routes.recognize_path(request.referer)[:action] #renders previous get request
    end
  end

   def create
    @issue = Issue.new(issue_params)    
	    if @issue.save
	      #Check User is a Normal user or an Admin user
	      #Send email to user who sign up
	      #  SysMailer.welcome_email(@user).deliver
	      redirect_to indexIssue_path
	    else
	    	render 'new'
	    end      
	end

  def destroy
    @issue=Issue.find(params[:id])
    @issue.destroy
      redirect_to indexIssue_path
  end

  private
  def issue_params
    params.require(:issue).permit(:issueno, :fy, :project, :risk, :status, :controlarea, :description,:iarecommendations, :duedate, :actionowner, :lob)
  end
end
