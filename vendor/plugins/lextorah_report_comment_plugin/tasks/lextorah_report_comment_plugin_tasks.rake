namespace :lextorah_report_comment_plugin do
  desc "Install Lextorah Email Plugin Module"
  task :install do
    system "rsync --exclude=.svn -ruv vendor/plugins/lextorah_report_comment_plugin/public ."
  end
end