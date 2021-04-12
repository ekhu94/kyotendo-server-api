class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  config.active_record.default_timezone = :local
end
