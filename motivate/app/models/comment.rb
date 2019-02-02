# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  body       :text             not null
#  goal_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :goals
end 

