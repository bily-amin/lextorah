require 'translator'
require File.join(File.dirname(__FILE__), "lib", "lextorah_email_plugin")

# make plugin controller available to app
config.load_paths += %W(#{LextorahEmailPlugin::PLUGIN_CONTROLLER_PATH} #{LextorahEmailPlugin::PLUGIN_HELPER_PATH})

#mailer configuration
ActionMailer::Base.delivery_method = :smtp
config.action_mailer.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "billyone4ever@gmail.com",
    :authentication => :plain,
    :user_name => "adambilyamin77@gmail.com",
    :password => "mylovelyone",
    :enable_starttls_auto => true
}


FedenaPlugin.register = {
  :name=>"lextorah_email_plugin",
  :description=>"Lextorah Email PLugin",
  :more_menu=>{:target_id=>"more-parent",:title=>"Email Batch",:controller=>"LextorahEmail",
               :action=>"prepare_email_for_batch"}
}

Dir[File.join("#{File.dirname(__FILE__)}/config/locales/*.yml")].each do |locale|
  I18n.load_path.unshift(locale)
end

if RAILS_ENV == 'development'
  ActiveSupport::Dependencies.load_once_paths.\
    reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end
