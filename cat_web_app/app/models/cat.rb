# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view/helpers'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = ['Red', 'Blue', 'Yellow', 'Tabby', 'Cream', 'Black', 'Hairless', 'White', 'Calico']

    validates :color, case_sensitive: false, inclusion: { in: COLORS,
    message: "There aren't %{value} cats, silly!" }
    validates :sex, case_sensitive: false, inclusion: { in: ['M','F'],
    message: "Sorry, we're not that woke." }
    validates :birth_date, :color, :name, :sex, :description, presence: true

    def age
        time_ago_in_words(birth_date)
    end

    def colors
        COLORS
    end
end
