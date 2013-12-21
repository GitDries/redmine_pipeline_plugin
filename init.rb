require 'redmine'

Redmine::Plugin.register :redmine_pipeline_plugin do
  name 'Pipeline (+Capacity)'
  author 'Dries'
  description 'A plugin for viewing the issues in the pipeline, for balancing future workload.'
  version '2.0.0'

  permission :view_pipeline, { :pipeline => :report }

  menu :top_menu,
        :Pipeline,
        { :controller => 'pipeline', :action => 'report' },
        :caption => 'Pipeline',
        :if => Proc.new {
          User.current.allowed_to?(:view_pipeline, nil, :global => true)
          }

end