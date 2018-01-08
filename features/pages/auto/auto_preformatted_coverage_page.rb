class AutoPreformattedCoverage < SitePrism::Page

  element :button_get_from_here, '#preformatted-coverages-auto-plans-1 .button.button-highlight.button--full-width.preformatted-coverages__button'

  def select_plan
    button_get_from_here.click
  end

end
