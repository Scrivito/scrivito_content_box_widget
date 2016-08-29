class ContentBoxWidget < Widget
  attribute :background_color, :string
  attribute :content, :widgetlist
  attribute :styles, :stringlist

  def scrivito_selectable_color_classes
    helper = ApplicationController.helpers
    if helper.respond_to? 'scrivito_selectable_color_classes'
      helper.scrivito_selectable_color_classes('content_box_widget', 'background_color')
    end
  end

  def scrivito_selectable_style_classes
    if Obj.respond_to? 'scrivito_selectable_style_classes'
      Obj.scrivito_selectable_style_classes
    else
      ['drop_shadow','margin_top','move_left','highlight', 'rounded']
    end
  end
end