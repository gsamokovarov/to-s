class To < Struct.new(:target)
  S = Object.new

  def -(other)
    target.to_s if other == S
  end
end

module Kernel
  def to
    To.new(self)
  end

  def s
    To::S
  end
end

begin
  # You don't really need Active Support's #to extension of String, do you?
  require 'active_support/core_ext/string/access'

  class String
    def to
      To.new(self)
    end
  end
rescue LoadError
  # We tried. :-)
end
