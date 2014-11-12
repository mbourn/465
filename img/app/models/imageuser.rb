class Imageuser < ActiveRecord::Base
  belongs_to :image
  belongs_to :user
end
