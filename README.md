# Redmine Pipeline Plugin

Pipeline is a Redmine plugin to ease the estimation of available capacity.

## Features

* Sums up the remaining times of open issues (basis is the estimated time subtracted with time entries)
* Multiple filter and grouping-options build-in
* An optional capacity calculation on a per month or per week basis (procentage difference with a
reference capacity of 8h on weekdays)
* Access to report is limited to configurable roles. Furthermore only issues normally viewable to the
user are viewable in this report.

## Install

1. Follow the Redmine plugin installation steps at: http://www.redmine.org/wiki/redmine/Plugins 
Make sure the plugin is installed to <tt>/plugins/redmine_pipeline_plugin</tt>. (dir-name with underscores)
2. This plugin doesn't need any database migrations
3. Restart your Redmine

## Usage

Configure the roles that have access to this report. (In the Administration-section, on the page Role, one
can find the permission "View Pipeline" under the Project-section).
If a user has at least one project with this role, the link to the report will be available on the top left menu.

Attention when studying the available capacity of a fellow member. The overview of the available capacity is only correct
corresponding to your personal access to issues assigned to this fellow member. Off course Administrators can
view all issues.

## Feedback

Feedback is very much appreciated.
This plugin is tested on Redmine 2.3, backed with a MySQL-database, but also
on Redmine 2.4, backed with a PSQL-database.

