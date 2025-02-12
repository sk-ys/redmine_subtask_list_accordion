require_dependency File.expand_path('../lib/redmine_subtask_list_accordion/hooks/subtask_list_accordion_hook', __FILE__)
require_dependency File.expand_path('../lib/redmine_subtask_list_accordion/patches/issues_helper_patch', __FILE__)
require_dependency File.expand_path('../lib/redmine_subtask_list_accordion/patches/user_preference_patch', __FILE__)

reloader = defined?(ActiveSupport::Reloader) ? ActiveSupport::Reloader : ActionDispatch::Reloader
reloader.to_prepare do
  unless UserPreference.included_modules.include?(RedmineSubtaskListAccordion::Patches::UserPreferencePatch)
    UserPreference.send :prepend, RedmineSubtaskListAccordion::Patches::UserPreferencePatch
  end

  unless IssuesHelper.included_modules.include?(RedmineSubtaskListAccordion::Patches::IssuesHelperPatch)
    IssuesHelper.send :include, RedmineSubtaskListAccordion::Patches::IssuesHelperPatch
  end
end

Redmine::Plugin.register :redmine_subtask_list_accordion do
  name 'Redmine Subtask List Accordion plugin'
  author 'Redmine Power'
  description 'This plugin provide accordion to subtask list of issue.'
  version '2.3.1'
  url 'https://github.com/RedminePower/redmine_subtask_list_accordion.git'
  author_url 'https://www.redmine-power.com/'
  settings default: { 'enable_server_scripting_mode' => true, 'expand_all' => false, 'collapsed_trackers' => "", 'collapsed_tracker_ids' => [] }, :partial => 'settings/subtask_list_accordion_settings'
end
