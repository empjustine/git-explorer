module Weatherlight

  module Cheatsheet

    module CommandTable

      class << self

        def _add_header_row(table, locations)
          locations.each_index { |x| location = locations[x]
            label = Gtk::Label.new(location['label'])

            table.attach_defaults(
              label,            # widget
              x,                # x1
              x + 1,            # x2
              table.n_rows - 1, # y1
              table.n_rows      # y2
            )
          }

          return table
        end

        def _draw_command_dialog(command, parent)
          #dialog = Gtk::Dialog.new(
          #  command['command'],
          #  parent,
          #  Gtk::Dialog::DESTROY_WITH_PARENT,
          #)

          #dialog.signal_connect('response') {
          #  dialog.destroy
          #}

          #dialog.vbox.add(
              Commander.gtk2_widget(command)
          #)
          #dialog.show_all

          #return dialog
        end

        def _add_command(command, parent)
          if parent
            element = Gtk::Button.new(command['label'])

            if command['direction'] == 'up'
              element.image = Gtk::Image.new(
                Gtk::Stock::GO_FORWARD, Gtk::IconSize::BUTTON)
              element.image_position = Gtk::PositionType::RIGHT
            elsif command['direction'] == 'dn'
              element.image = Gtk::Image.new(
                Gtk::Stock::GO_BACK, Gtk::IconSize::BUTTON)
              element.image_position = Gtk::PositionType::LEFT
            else
              element.image = Gtk::Image.new(
                Gtk::Stock::REFRESH, Gtk::IconSize::BUTTON)
              element.image_position = Gtk::PositionType::RIGHT
            end

            element.signal_connect("clicked") {
              _draw_command_dialog(command, parent)
            }
          else
            element = Gtk::Label.new(command['label'])
          end

          element.set_tooltip_text(command['documentation'])

          return element
        end

        def _add_command_row(table, locations, command, parent)
          location_names = locations.map { |location|
            location['name']
          }

          left = location_names.index(command['left'])
          right = location_names.index(command['right'])

          if left && right
            table.n_rows += 1

            element = _add_command(command, parent)
            table.attach_defaults(
              element,          # widget
              left,             # x1
              right + 1,        # x2
              table.n_rows - 1, # y1
              table.n_rows      # y2
            )
          end

          return table
        end

        def gtk2_widget(locations, commands, parent=nil)
          table = Gtk::Table.new(
            rows = 0,
            coluns = locations.size,
            homogeneous = false
          )

          table = _add_header_row(table, locations)

          commands.each { |command|
            table = _add_command_row(table, locations, command, parent)
          }

          return table
        end
      end # class << self
    end # class CommandTable
  end # module Cheatsheet
end # module Weatherlight
