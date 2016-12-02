class App < ApplicationRecord
  belongs_to :appstate
  belongs_to :user
end
