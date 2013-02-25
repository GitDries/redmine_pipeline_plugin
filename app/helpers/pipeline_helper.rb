module PipelineHelper

  # @param [Date] date
  def workdays_in_month(date)
    wdays = [0,6] #weekend days by numbers on week
    if date.beginning_of_month.past?
      (Date.today..date.end_of_month).reject { |d| wdays.include? d.wday }.size
    else
      (date.beginning_of_month..date.end_of_month).reject { |d| wdays.include? d.wday }.size
    end
  end

  def workdays_in_week(date)
    if date.beginning_of_week.past?
      wdays = [0,6] #weekend days by numbers on week
      (Date.today..date.end_of_week).reject { |d| wdays.include? d.wday }.size
    else
      5
    end
  end

  def issue_group_month(issue)
    if issue.due_before.nil?
      nil
    elsif issue.due_before.past?
      Date.today.end_of_month
    else
      issue.due_before.end_of_month
    end
  end
  
  def issue_group_week(issue)
    if issue.due_before.nil?
      nil
    elsif issue.due_before.past?
      Date.today.end_of_week
    else
      issue.due_before.end_of_week
    end
  end

  def issue_time_left(issue)
    if issue.estimated_hours.nil?
      0
    elsif issue.spent_hours.nil?
      issue.estimated_hours
    else
      [(issue.estimated_hours - issue.spent_hours), (issue.estimated_hours*0.1)].max
    end
  end

  def format_duration(duration)
    number_with_precision(duration, :precision => 2)
  end

  def format_workload(workload)
    workload.to_i.to_s + "%"
  end


end