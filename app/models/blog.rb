class Blog < ApplicationRecord
  serialize :tags, Array
  serialize :images, Array
  mount_uploaders :images, ImagesUploader


end
