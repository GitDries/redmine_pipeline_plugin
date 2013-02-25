require 'redmine'

Redmine::Plugin.register :redmine_pipeline do
  name 'Pipeline (+Capacity)'
  author 'Dries'
  description 'A plugin for viewing work in pipeline, for balancing future workload.'
  version '0.6.0'

  menu :top_menu,
        :Pipeline,
        { :controller => 'pipeline', :action => 'report' },
        :caption => 'Pipeline',
        :if => Proc.new { User.current.admin? }
end