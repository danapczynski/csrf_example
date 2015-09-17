{"Unsuspecting Victim" => 1000, "1337 hAx0r" => 5}.each do |name, balance|
  u = User.new(name: name)
  u.account = Account.new(balance: balance)
  u.save!

  puts "Created #{u.name}..."
end


