class AutoCoveragesSelection < SitePrism::Page
  element :button_next_step, '.narrative-form__field .button.button--primary.button--centered'
  elements :coverages_name_list, '.coverage__name'
  elements :coverages_switch_list, '.coverage__action-box'

  def select_coverage(coverages)
    coverages_name_list.each_with_index do |coverage_name, index|
      if coverages.include?(coverage_name.text)
        coverages_switch_list[index].click
      end
    end
    button_next_step.click
  end
end
