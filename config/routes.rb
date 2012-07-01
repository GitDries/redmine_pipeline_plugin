# Plugin's routes
match 'pipeline/report', :controller => 'pipeline', :action => 'report', :via => :get
match 'pipeline/report', :controller => 'pipeline', :action => 'report', :via => :post
match 'pipeline/reset', :controller => 'pipeline', :action => 'reset', :via => :delete
