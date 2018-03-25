honda_odyssey = Car.create(:make => "Honda", :model => "Odyssey", :year => "2010", :user_id => "1")
toyota_camry = Car.create(:make => "Toyota", :model => "Camry", :year => "2004", :user_id => "2")
volkswagen_golf = Car.create(:make => "Volkswagen", :model => "Golf", :year => "2014", :user_id => "2")
mercedes_benz = Car.create(:make => "Mercedes", :model => "Benz", :year => "2015", :user_id => "1")

alicia = User.create(:first_name => "Alicia", :last_name => "Maribel", :username => "mira", :password => "vacation")
charlie = User.create(:first_name => "Charlie", :last_name => "Day", :username => "charlie", :password => "birthday")