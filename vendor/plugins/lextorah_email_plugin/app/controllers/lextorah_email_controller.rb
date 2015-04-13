class LextorahEmailController < ApplicationController

  def prepare_email_for_batch
    @batches = Batch.active
  end

  def email_batch
    sender = current_user.email
    @students = Student.find_all_by_batch_id(params[:batch_id], :order => 'first_name ASC')
    @students.each do |student|
      recipient = student.email
      unless recipient.nil?
        LextorahMailer::deliver_email!(recipient, params['email']['subject'], params['email']['message'])
      end
    end
    flash[:notice] = "Email sent successful."
    redirect_to email_batch_url
  end
end