Role.find_or_create_by_name({ :name => 'admin' }, :without_protection => true)

user = User.find_or_create_by_email :name => 'Nikhil', :email => 'dxypher1@gmail.com', :password => 'changeme', :password_confirmation => 'changeme'

user.add_role :admin