class Blog < ApplicationRecord
  serialize :tags, Array
  serialize :images, Array


end
