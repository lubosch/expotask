# == Schema Information
#
# Table name: event_types
#
#  id         :integer          not null, primary key
#  name       :string
#  goal       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe EventType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
