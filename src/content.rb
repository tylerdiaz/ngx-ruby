class JSONContent
  attr_accessor :object

  def initialize(value)
    @object = value
  end

  def to_s
    JSON::stringify(@object)
  end
end

Nginx.echo JSONContent.new({
  team: [
    { name: "Tyler", title: "developer" },
    { name: "Daniel", title: "developer" },
    { name: "Dafeng", title: "developer" }
  ]
})
