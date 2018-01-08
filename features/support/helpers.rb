module Helpers
  def generate_email
    [*('A'..'Z')].sample(8).join + '@youse.com.br'
  end
end
World(Helpers)
