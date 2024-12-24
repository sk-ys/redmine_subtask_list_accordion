# Redmine Subtask List Accordion

This plugin provide accordion tree to subtask-list on issue.

## Features

* Add accordion feature to subtask-list.
* Add 'Expand this tree', 'Collapse this tree' and 'Expand next level all' to context-menu.
* Add preferences of expand tree at first time.
* Add plugin setting for server/client processing mode switch. (server mode default)  
Server mode is faster than client mode, but server mode is tradeoff other subtask's plugin. (for exsample 'subtask_list_columns' plugin)

## Compatibility

Redmine 3.2 or 3.3 or 3.4 or 4.0 or 5.0 stable

Tested on:
* 3.2.9
* 3.3.6
* 3.4.8
* 4.0.1
* 5.0.5

## Installation

1. Follow the Redmine plugin installation steps at: http://www.redmine.org/wiki/redmine/Plugins
1. Download the plugin `git clone https://github.com/RedminePower/redmine_subtask_list_accordion.git`
1. Run the plugin migrations `bundle exec rake redmine:plugins:migrate RAILS_ENV=production`
1. Restart your Redmine web server
