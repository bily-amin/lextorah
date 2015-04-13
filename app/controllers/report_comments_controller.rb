class ReportCommentsController < ApplicationController

  def create
    @report_comment = ReportComment.new(params[:report_comment])

    respond_to do |format|
      if @report_comment.save
        flash[:notice] = 'Comment was successfully saved.'
        format.html { redirect_to(@report_comment) }
        format.xml  { render :xml => @report_comment, :status => :created, :location => @report_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_comments/1
  # PUT /report_comments/1.xml
  def update
    @report_comment = ReportComment.find(params[:id])

    respond_to do |format|
      if @report_comment.update_attributes(params[:report_comment])
        flash[:notice] = 'ReportComment was successfully updated.'
        format.html { redirect_to(@report_comment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_comments/1
  # DELETE /report_comments/1.xml
  def destroy
    @report_comment = ReportComment.find(params[:id])
    @report_comment.destroy

    respond_to do |format|
      format.html { redirect_to(report_comments_url) }
      format.xml  { head :ok }
    end
  end
end
