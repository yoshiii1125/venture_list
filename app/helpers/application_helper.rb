module ApplicationHelper
  def grid_tag(n = 1, &_block)
    content_tag :div, class: "col-md-#{n}" do
      yield
    end
  end

  def label_tag(type = 'default', text)
    klass = "label label-#{type}"
    content_tag :span, text, class: klass
  end

  def nav_li_tag(text, path, klass = [])
    klass.push 'active' if current_page?(path)
    content_tag :li, class: klass do
      link_to text, path
    end
  end

  def panel_tag(header = nil, type = 'default', options = {}, &_block)
    header_html = ''
    header_html = content_tag(:div, header, class: 'panel-heading') unless header.nil?
    tag_options = options.reverse_merge(class: "panel panel-#{type}")
    content = content_tag(:div, class: 'panel-body'){ yield }
    content_tag :div, tag_options do
      header_html.present? ? header_html.concat(content) : content
    end.html_safe
  end

  def row_tag(&_block)
    content_tag :div, class: 'row' do
      yield
    end
  end

  def yield_for(content_sym, default)
    output = content_for(content_sym)
    output = default if output.blank?
    output
  end
end
