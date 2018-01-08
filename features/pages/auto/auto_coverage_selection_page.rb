class AutoCoverageSelection < SitePrism::Page

  element :button_next_step, '.narrative-form__field .button.button--primary.button--centered'
  elements :coverages_name_list, '.coverage__name'
  elements :coverages_switch_list, '.coverage__action-box'

  def select_coverage
    coverages_name_list.each_with_index do |coverage_name, index|
      if coverage_name.text == 'Vale para perda total' || coverage_name.text == 'Vale pra qualquer batida' || coverage_name.text == 'Danos corporais a terceiros'
        coverages_switch_list[index].click
      end
    end
    button_next_step.click
  end

end
