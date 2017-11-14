# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  text       :string           default(""), not null
#  a          :string           default(""), not null
#  b          :string           default(""), not null
#  c          :string           default(""), not null
#  d          :string           default(""), not null
#  answer     :integer          default("a"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  enum answer: { a: 0, b: 1, c: 2, d: 4 }
end
