module Crocoa
  class NSString < NSObject
    objc_method "initWithUTF8String:", [:const_char_ptr], :instancetype, "initialize"

    def initialize(s : Crocoa::NSString)
      raise "" # ???? compiler limitation
    end

    def to_s(io)
      io << String.new(Crocoa.send_msg(to_objc, "UTF8String"))
    end

    objc_method "length", nil, :NSUInteger
    objc_method "characterAtIndex:", [:NSUInteger], :unichar, "[]"
  end
end
