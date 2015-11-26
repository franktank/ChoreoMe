class Song < ActiveRecord::Base
  has_attached_file :mp3
  validates_attachment_content_type :mp3, content_type: /mp3/
end
