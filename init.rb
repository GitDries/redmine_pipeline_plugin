require 'redmine'

Redmine::Plugin.register :redmine_pipeline_plugin do
  name 'Pipeline (+Capacity)'
  author 'Dries'
  description 'A plugin for viewing work in pipeline, for balancing future workload.'
  version '1.0.0'

  menu :top_menu,
        :Pipeline,
        { :controller => 'pipeline', :action => 'report' },
        :caption => 'Pipeline',
        :if => Proc.new { User.current.admin? }
end