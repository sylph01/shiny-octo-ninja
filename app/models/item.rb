# encoding: utf-8

class Item < ActiveRecord::Base
  def image_file=(f)
    @image_file = f
	unless @image_file.blank?
      self.content_type = f.content_type.gsub(/[^\w.+;=_\/-]/n, '')
	  self.image = f.read
	end
  end

  def validate
    if self.image && self.content_type !~ /^image/
      errors.add(:image_file, "は画像ではありません。")
	end
  end
end
