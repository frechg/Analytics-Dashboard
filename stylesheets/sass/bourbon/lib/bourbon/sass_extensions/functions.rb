module Bourbon::SassExtensions::Functions
end

require_relative "functions/compact"

module Sass::Script::Functions
  include Bourbon::SassExtensions::Functions::Compact
end

# Wierd that this has to be re-included to pick up sub-modules. Ruby bug?
class Sass::Script::Functions::EvaluationContext
  include Sass::Script::Functions
end
