# ScrivitoContentBoxWidget

Scrivito Widget to add a content box with adjustable background color.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_content_box_widget'

Add this line to your application stylesheet manifest:

    *= require scrivito_content_box_widget

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_content_box_widget:
    thumbnail:
      title: Content Box
      description: Add a content box to our page where you can set a background color and different styles
    details:
      background_color: Background color
      styles: Styles
```

## Customization

This widget includes an attribute for the background color of every panel. The value of this attribute is used as a CSS class. If you want to use this feature, add a CSS rule for your selectable colors:

```css
.bg-red {
  background-color: red;
}
```

You can also use the [Scrivito Advanced Editors](https://github.com/Scrivito/scrivito_advanced_editors #color_picker) color picker to have a better visualization of the selectable color classes.

There is also an attribute for different styles. It holds a class for different styles like `drop_shadow`, `more_margin`, `highlight`, ...

Using advance editors, you can define the selectable classes by adding a class method to your `obj.rb`:

```ruby
  class Obj < Scrivito::BasicObj
    ...
    def scrivito_selectable_style_classes
      ['drop_shadow','margin_top','move_left','highlight', 'rounded']
    end
    ...
  end
```

Than you have to define a css class for your selections:

```css
  .drop_shadow {
    box-shadow: 0 2px 6px 1px rgba(0, 0, 0, 0.3);
  }

  .margin_top {
    margin-top: 10px;
  }

  .move_left {
    width: auto;
    margin-left: -20px;
  }

  .highlight {
    outline: #cc0000 solid 3px;
  }

  .rounded {
    border-radius: 5px;
  }
```
