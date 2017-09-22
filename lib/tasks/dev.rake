namespace :dev do
  desc "TODO"
  task setup: :environment do

  	task db:drop
  rake db:create
  rake db:migrate
  rake db:seed
  rake utils:seed
  end

end
