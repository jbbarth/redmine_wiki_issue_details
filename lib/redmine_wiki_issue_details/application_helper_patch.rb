require_dependency 'application_helper'

module ApplicationHelper
  def parse_redmine_links_with_issue_details(text, default_project, obj, attr, only_path, options)
    parse_redmine_links_without_issue_details(text, default_project, obj, attr, only_path, options)

    re_leading = %r{([\s\(,\-\[\>]|^)}
    re_final   = %r{(?=(?=[[:punct:]][^A-Za-z0-9_/])|,|\s|\]|<|$)}
    details    = parseable_issue_details

    text.gsub!(%r{#{re_leading}#(\d+):(#{Regexp.union(details)})#{re_final}}) do
      leading, identifier, detail = $1, $2, $3
      oid = identifier.to_i
      if detail && details.include?(detail) && oid.to_s == identifier && issue = Issue.visible.find_by_id(oid, :include => :status)
        if private_methods.include?(:"parse_issue_detail_#{detail}")
          title = send(:"parse_issue_detail_#{detail}", issue)
        else
          title = issue.send(detail) 
        end
        title = format_issue_detail(detail, title)
        "#{leading}#{title}"
      else
        "#{leading}##{identifier}:#{detail}"
      end
    end
  end
  alias_method_chain :parse_redmine_links, :issue_details

  private
  def parseable_issue_details
    details    = %w(subject description due_date created_on updated_on start_date done_ratio)
    details   += %w(estimated_hours is_private closed_on comments_count)
    details   += %w(status project tracker priority author assigned_to fixed_version category parent)
    details   += %w(closed? overdue? behind_schedule? blocked? spent_hours total_spent_hours)
    details   += %w(due_before duration working_duration)
    details   += %w(summary progress)
  end

  private
  def parse_issue_detail_summary(issue)
    issue.to_s
  end

  private
  def parse_issue_detail_progress(issue)
    progress_bar(issue.done_ratio).html_safe
  end

  private
  def format_issue_detail(detail, title)
    if detail.ends_with?("?") || title.in?([true, false])
      title = title ? l(:general_text_yes) : l(:general_text_no)
    elsif title.is_a?(Date)
      title = format_date(title)
    elsif title.is_a?(DateTime)
      title = format_time(title)
    end
    title = "?" if title.nil?
    title
  end
end
