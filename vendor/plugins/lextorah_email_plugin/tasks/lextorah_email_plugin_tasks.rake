namespace :lextorah_email_plugin do
  desc "Install Lextorah Email Plugin Module"
  task :install do
    system "rsync --exclude=.svn -ruv vendor/plugins/lextorah_email_plugin/public ."
  end
end