require 'translator'
require File.join(File.dirname(__FILE__), "lib", "lextorah_report_comment_plugin")

# make plugin controller available to app
config.load_paths += %W(#{LextorahReportCommentPlugin::PLUGIN_CONTROLLER_PATH} #{LextorahReportCommentPlugin::PLUGIN_HELPER_PATH})


FedenaPlugin.register = {
  :name=>"lextorah_report_comment_plugin",
  :description=>"Class teacher comment on student report card",
}

Dir[File.join("#{File.dirname(__FILE__)}/config/locales/*.yml")].each do |locale|
  I18n.load_path.unshift(locale)
end

if RAILS_ENV == 'development'
  ActiveSupport::Dependencies.load_once_paths.\
    reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end
