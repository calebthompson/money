class Numeric
  alias_method :_to_money, :to_money
  def to_money(*args)
    unless Money.silence_core_extensions_deprecations
      Money.deprecate "as of Money 6.1.0 you must `require 'monetize/core_extensions'` to use Numeric#to_money. Please start using the Monetize gem from https://github.com/RubyMoney/monetize if you are not already doing so"
    end
    _to_money(*args)
  end
end
