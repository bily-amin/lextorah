class LextorahReportCommentController < ApplicationController

  def save
    @student = Student.find(params[:student])
    if request.post?
      @report_comment = ReportComment.new(params[:report_comment])
      @report_comment.student = @student
      @report_comment.batch = @student.batch
      if @report_comment.save
        flash[:notice] = 'Comment was successfully saved.'
        redirect_to :controller => :exam, :action => :generated_report4, :exam_report => {:batch_id => @student.batch.id}
      else
        render 'lextorah_report_comment/new_comment.erb'
      end
    else
      @report_comment = ReportComment.new
      render 'lextorah_report_comment/new_comment.erb'
    end
  end

  def update
    @report_comment = ReportComment.find(params[:id])
    @student = @report_comment.student
    if request.put?
      if @report_comment.update_attributes(params[:report_comment])
        flash[:notice] = 'Comment was successfully saved.'
        redirect_to :controller => :exam, :action => :generated_report4, :exam_report => {:batch_id => @student.batch.id}
      else
        render 'lextorah_report_comment/edit_comment.erb'
      end
    else
      render 'lextorah_report_comment/edit_comment.erb'
    end
  end

end