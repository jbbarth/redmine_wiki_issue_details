Redmine::Plugin.register :redmine_wiki_issue_details do
  name 'Redmine Wiki Issue Details plugin'
  author 'Jean-Baptiste BARTH'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/jbbarth/redmine_wiki_issue_details'
  author_url 'jeanbaptiste.barth@gmail.com'
end

Rails.application.config.to_prepare do
  require_dependency 'redmine_wiki_issue_details/application_helper_patch'
end
