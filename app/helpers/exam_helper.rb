module ExamHelper
  def compute_student_average(student, subjects_count)
    unless student.nil?
      exam_scores = ExamScore.find_all_by_student_id(student.id)
      total_scores = 0;
      exam_scores.each do |exam_score|
      total_scores += exam_score.marks
      end
      average = total_scores.to_f / subjects_count.to_f
      return average
    end
    return 0.0
  end

  def report_comment_for(student)
    comment = ReportComment.find_all_by_student_id(student.id).first
    unless comment.nil?
      return comment
    end
    return nil
  end

end