
for i in 0..10
  User.create!(name:Faker::Name.name, username:Faker::Internet.user_name)
  puts Faker::Name.name
  puts Faker::Internet.user_name
end





puts "Hello12"

for i in 0..5
  Account.create!(bic:Faker::Bank.swift_bic,iban:Faker::Crypto.md5,recipient:Faker::Name.name)
end







puts "Hello23"

for i in 0..5
  Ownership.create!(account:Account.offset(rand(Account.count)).first,user:User.offset(rand(User.count)).first)
end
BudgetaryGroup.create!(name:"Einnahmen")
BudgetaryGroup.create!(name:"Ausgaben")
BudgetaryGroup.create!(name:"Rücklagen")


for i in 0..30
  FinancingApplication.create!(session_date:Faker::Time.between(2.days.ago, Date.tomorrow), figure:rand(0...1000), applicant:Faker::Name.name, description:Faker::Lorem.sentence(3, true), justification:Faker::Lorem.sentence(3, true), miscellenea:Faker::Lorem.sentence(3, true))
end
for i in 0..10
  BudgetaryPosition.create!(amount:rand(5...600), classification_number:rand(0..50), description:Faker::Lorem.sentence(3, true), budgetary_group:BudgetaryGroup.offset(rand(BudgetaryGroup.count)).first, examples:Faker::Lorem.sentence(3, true), title:Faker::Commerce.material)
end
Body.create!(name:"Stura",description:"der große Kreis")
Body.create!(name:"MathPhys",description:"der kleine Kreis")
Body.create!(name:"Refkonf",description:"der Schattenkreis")
for i in 0..10
  OfferComparison.create(link1:Faker::Internet.url,link2:Faker::Internet.url,link3:Faker::Internet.url,offeror1:Faker::Company.name,offeror2:Faker::Company.name,offeror3:Faker::Company.name,price1:rand(0...300),price2:rand(0...300),price3:rand(0...300), product_description1:Faker::Lorem.sentence(3, true), product_description3:Faker::Lorem.sentence(3, true), product_description2:Faker::Lorem.sentence(3, true),explanation:Faker::Lorem.sentence(3, true))
end
for i in 0..5
  FsResolution.create!(budgetary_position:BudgetaryPosition.offset(rand(BudgetaryPosition.count)).first,description:Faker::Lorem.sentence(3, true), figure:rand(0...50), justification:Faker::Lorem.sentence(3, true))
end
for i in 0..2
  FrOcNecessary.create!(fs_resolution:FsResolution.offset(rand(FsResolution.count)).first,offer_comparison:OfferComparison.offset(rand(OfferComparison.count)).first)
end

for i in 0..5
  TheoretikumBilling.create!(
    approval_date:Faker::Time.between(2.days.ago, Date.tomorrow),  event_date:Faker::Date.between(2.days.ago, Date.tomorrow),figure:rand(5..100),locker_rent:[true,false].sample,mailing_date:Faker::Time.between(2.days.ago, Date.tomorrow),
   miscellenea:Faker::Lorem.sentence(3,true),postage:[true,false].sample,print_costs:[true,false].sample,protocol_link:Faker::Internet.url,protocol_page:rand(1..20),
   resolution_date:Faker::Date.between(2.days.ago, Date.tomorrow),review_date:Faker::Time.between(2.days.ago, Date.tomorrow),submission_date:Faker::Date.between(2.days.ago, Date.tomorrow))
end
for i in 0..2
  TbOcNecessary.create!(theoretikum_billing:TheoretikumBilling.offset(rand(TheoretikumBilling.count)).first,offer_comparison:OfferComparison.offset(rand(OfferComparison.count)).first)
end
for i in 0..5
  DisbursalRequest.create!(approval_date:Faker::Time.between(2.days.ago, Date.tomorrow),event_date:Faker::Date.between(2.days.ago, Date.tomorrow),figure:rand(5..100),mailing_date:Faker::Time.between(2.days.ago, Date.tomorrow), protocol_link:Faker::Internet.url,protocol_page:rand(1..20), resolution_date:Faker::Date.between(2.days.ago, Date.tomorrow),review_date:Faker::Time.between(2.days.ago, Date.tomorrow),submission_date:Faker::Time.between(2.days.ago, Date.tomorrow),attendee_count:rand(0..30),authorized:[true,false].sample,deposit:rand(0..10),description:Faker::Lorem.sentence(3, true),discount_card:[true,false].sample,food:[true,false].sample,invoice_settled:[true,false].sample,pdf:File.read('erd.pdf'),)
end
for i in 0..2
  DrOcNecessary.create!(disbursal_request:DisbursalRequest.offset(rand(DisbursalRequest.count)).first,offer_comparison:OfferComparison.offset(rand(OfferComparison.count)).first)
end
for i in 0..5
  DrinkPosition.create!(name:Faker::Beer.name,percentage:rand(0.05,0.7),quantity:rand(1..20),volume:rand(100,1000))
end
for i in 0..2
  dr=DisbursalRequest.offset(rand(DisbursalRequest.count)).first
  Drink.create!(disbursal_request:dr,drink_position:DrinkPosition.offset(rand(DrinkPosition.count)).first)
  Drink.create!(disbursal_request:dr,drink_position:DrinkPosition.offset(rand(DrinkPosition.count)).first)
  Drink.create!(disbursal_request:dr,drink_position:DrinkPosition.offset(rand(DrinkPosition.count)).first)
end

for i in 0..5
  InventoryItem.create!(lent_at:Faker::Time.between(2.days.ago, Date.tomorrow),name:Faker::Commerce.product_name, price:rand(0...500), purchase_date:Faker::Time.between(100.days.ago, 5.days.ago), quantity:rand(1...5), storage_location:Faker::GameOfThrones.city, user:User.offset(rand(User.count)).first)
end
