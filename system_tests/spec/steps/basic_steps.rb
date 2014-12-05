I18n.available_locales.each do |locale|
  step I18n.t('open_the_page.description', scope: 'steps', locale: locale) do |page_name|
    path = $pages[locale][page_name]
    if path.nil?
      raise StandardError.new("Undefined page: #{page_name}")
    end

    visit path

    begin
      actual_page_name = page.find('meta[name="page-name"]', visible: :all).value
      expect(actual_page_name).to eq page_name
    rescue Capybara::ElementNotFound
      raise StandardError.new <<-ERROR_MESSAGE.gsub(/^\s+/, '')
        You must add a meta page-name tag for cheking if your expected page was opend.
        Please add a following tag to your HTML document: <meta name="page-name" value="#{page_name}">
      ERROR_MESSAGE
    end
  end

  step I18n.t('display_text.description', scope: 'steps', locale: locale) do |text|
    expect(page).to have_content text
  end

  step I18n.t('click_link.description', scope: 'steps', locale: locale) do |target|
    click_link target
  end

  step I18n.t('click_button.description', scope: 'steps', locale: locale) do |target|
    click_button target
  end

  step I18n.t('fill_in_text.description', scope: 'steps', locale: locale) do |target, content|
    fill_in target, with: content
  end

  step I18n.t('select_from_select_box.description', scope: 'steps', locale: locale) do |arg1, arg2|
    args_order = I18n.t('select_from_select_box.args_order', scope: 'steps', locale: locale)

    args_order.reduce({}) do ||
    end

    select arg1, from: arg2
  end

  step I18n.t('select_from_radio_button.description', scope: 'steps', locale: locale) do |option, target|
    within_fieldset target do
      choose option
    end
  end

  step I18n.t('check.description', scope: 'steps', locale: locale) do |target|
    check target
  end

  step I18n.t('multiple_check.description', scope: 'steps', locale: locale) do |options, target|
    within_fieldset target do
      options.split(',').map(&:strip).each do |option|
        check option
      end
    end
  end
end
