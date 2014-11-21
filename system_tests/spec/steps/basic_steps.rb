I18n.available_locales.each do |locale|
  step I18n.t(:visit_page, scope: 'steps', locale: locale) do |page_name|
    path = $pages[locale][page_name] || '/'
    visit path
  end

  step I18n.t(:display_text, scope: 'steps', locale: locale) do |text|
    expect(page).to have_content text
  end

  step I18n.t(:click_link, scope: 'steps', locale: locale) do |target|
    click_link target
  end

  step I18n.t(:click_button, scope: 'steps', locale: locale) do |target|
    click_button target
  end

  step I18n.t(:fill_in_text, scope: 'steps', locale: locale) do |target, content|
    fill_in target, with: content
  end
end
