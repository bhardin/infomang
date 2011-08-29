class User < ActiveRecord::Base
  has_one :rapleafdata, :dependent => :destroy
end
