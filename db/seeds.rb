# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Create some sample trades
Trade.create(description: 'Trade 1')
Trade.create(description: 'Trade 2')
# Add more trades as needed

# db/seeds.rb

# Create some sample users
User.create(is_supplier: true, is_active: true, name: 'User 1', phone: '123-456-7890')
User.create(is_supplier: false, is_active: true, name: 'User 2', phone: '987-654-3210')
# Add more users as needed

# db/seeds.rb

# Create some sample supplier_trade entries
SupplierTrades.create(trades_id: Trade.first, supplier: User.first)
SupplierTrades.create(trades_id: Trade.second, supplier: User.second)
# Add more supplier_trade entries as needed

# db/seeds.rb

# db/seeds.rb

# Create some sample jobs
Job.create(trade: Trade.first, customer: User.second, supplier: User.first, city: City.first, description: 'Job 1', low_price: 100.0, high_price: 200.0, expiration_date: Date.today + 7.days, is_taken: false, is_completed: false)
Job.create(trade: Trade.second, customer: User.first, city: City.second, description: 'Job 2', low_price: 150.0, high_price: 250.0, expiration_date: Date.today + 14.days, is_taken: true, is_completed: false)
# Add more jobs as needed

# db/seeds.rb

# Create some sample countries
Country.create(name: 'Country 1')
Country.create(name: 'Country 2')
# Add more countries as needed


# Create some sample cities
City.create(name: 'City 1', country: Country.first)
City.create(name: 'City 2', country: Country.first)
# Add more cities as needed
# db/seeds.rb

# Create some sample proposals
Proposal.create(supplier: User.first, job_id: Job.first, price: 120.0, expiration_date: Date.today + 5.days, is_accepted: false, description: 'Proposal 1')
Proposal.create(supplier: User.second, job_id: Job.second, price: 160.0, expiration_date: Date.today + 7.days, is_accepted: true, description: 'Proposal 2')
# Add more proposals as needed
