require 'jbuilder'

# ApiDef::Response means a response api returned
class ApiDef::Response < ApiDef::Element

  def body(&block)
    if block
      @body = Jbuilder.new(&block).attributes!
    else
      @body
    end
  end
end
