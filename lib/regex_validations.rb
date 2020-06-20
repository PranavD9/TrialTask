module RegexValidations
  def self.alphanumeric_underscore
    { with: /\A[\w\_]+\z/ }
  end
end