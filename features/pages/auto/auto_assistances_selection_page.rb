class AutoAssistancesSelection < SitePrism::Page

  element :button_next_step, '.narrative-form__field .button.button--primary.button--centered'
  elements :assistances_name_list, '.assistance__name.assistance__name--desktop'
  elements :assistances_switch_list, '.assistance__action-box'

  def select_assistances
    assistances_name_list.each_with_index do |assistance_name, index|
      if assistance_name.text == 'Chaveiro auto' || assistance_name.text == 'Vidros' || assistance_name.text == 'Assistência a automóvel'
        assistances_switch_list[index].click
      end
    end
    button_next_step.click
  end

end
