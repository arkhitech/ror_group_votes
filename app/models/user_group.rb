class UserGroup < ActiveRecord::Base
  #(Could be a company, club, circle, etc.)
    has_many :memberships
    has_many :users, through: :memberships
    has_many :invites
end
