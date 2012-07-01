module PipelineHelper

  # @param [Date] date
  def workdays_in_month(date)
    d1 = Date.new( date.year, date.month, 1)
    d2 = Date.new( date.year, date.month, -1)
    if date.year == Date.today.year && date.month == Date.today.month
      d1 = Date.today
    end
    wdays = [0,6] #weekend days by numbers on week
    (d1..d2).reject { |d| wdays.include? d.wday }.size
  end

  def issue_group_month(issue)
    if issue.due_before.nil?
      nil
    else
      Date.new( issue.due_before.year, issue.due_before.month, -1 )
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
end