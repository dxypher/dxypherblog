puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => "Nikhil", :email => 'dxypher1@gmail.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user.name
user.add_role :admin