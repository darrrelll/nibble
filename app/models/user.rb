class Users < ActiveRecord::Base
  belongs_to :group
  has_and_belongs_to_many :lunches
end
