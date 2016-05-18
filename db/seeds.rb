Dir[Rails.root.join("spec/factories/*.rb")].each { |f| require f }

FactoryGirl.create(:admin)

im = FactoryGirl.create(:event_type, name: 'ipsum_metric')
iv = FactoryGirl.create(:event_type, name: 'infinario_valuation', goal: 150000)
bv = FactoryGirl.create(:event_type, name: 'blog_visits', goal: 5000)
hv = FactoryGirl.create(:event_type, name: 'hp_visits', goal: 8665)

FactoryGirl.create_list(:event, 15942, event_type_id: im.id)
FactoryGirl.create_list(:event, 11806, event_type_id: iv.id)
FactoryGirl.create_list(:event, 2914, event_type_id: bv.id)
FactoryGirl.create_list(:event, 5281, event_type_id: hv.id)
