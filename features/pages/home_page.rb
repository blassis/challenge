class HomePage < SitePrism::Page

  set_url "https://qa.youse.io/"

  element :my_account, '#header-link__minha-conta'
  element :about_youse, '#header-link__quem-somos'
  element :safes, '.nav__link.has-submenu'
  element :auto, '#header-link__seguro-auto'
  element :home, '#header-link__seguro-residencial'
  element :life, '#header-link__seguro-vida'
  element :button_quotation_auto, '.auto a.bt-quotation'

  def button_my_account
    my_account.click
  end

  def access_page_auto
    safes.click
    auto.click
  end

  def access_page_home
    safes.click
    home.click
  end

  def access_page_life
    safes.click
    life.click
  end

end
