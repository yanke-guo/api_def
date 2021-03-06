class ApiDef::Element
  include ApiDef::Support::AttrUno
  include ApiDef::Support::AttrArray
  include ApiDef::Support::AttrUnoArray

  attr_uno :name, :desc

  def initialize(name = nil, options = {})
    self.name name
    self.on_options(options)
    yield self if block_given?
  end

  def on_options(options)
    self.desc options[:desc]
  end
end
