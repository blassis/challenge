class MyAccountPage < SitePrism::Page

  element :confirmation, '.account-header__account-link.account-header__account-with-sub-menu'
  element :menu_dropdown, '.account-dropdown__menu.links-list.account-dropdown__menu__right'
  element :leave, '#track_logout'


  def logout
    menu_dropdown.click
    leave.click
  end

end
