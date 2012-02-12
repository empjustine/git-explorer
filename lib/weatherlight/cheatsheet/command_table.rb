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

        def _add_button(command)
          button = Gtk::Button.new(command['command'])

          if command['direction'] == 'up'
              button.image = Gtk::Image.new(
                  Gtk::Stock::GO_FORWARD, Gtk::IconSize::BUTTON)
              button.image_position = Gtk::PositionType::RIGHT
          elsif command['direction'] == 'dn'
              button.image = Gtk::Image.new(
                  Gtk::Stock::GO_BACK, Gtk::IconSize::BUTTON)
              button.image_position = Gtk::PositionType::LEFT
          else
              button.image = Gtk::Image.new(
                  Gtk::Stock::REFRESH, Gtk::IconSize::BUTTON)
              button.image_position = Gtk::PositionType::RIGHT
          end

          button.set_tooltip_text(command['documentation'])
          
          button.signal_connect("clicked") {
            puts command['documentation']
          }

          return button
        end

        def _add_command_row(table, locations, command)
          location_names = locations.map { |location|
            location['name']
          }

          left = location_names.index(command['left'])
          right = location_names.index(command['right'])

          if left && right
            table.n_rows += 1

            button = _add_button(command)
            table.attach_defaults(
              button,           # widget
              left,             # x1
              right + 1,        # x2
              table.n_rows - 1, # y1
              table.n_rows      # y2
            )
          end

          return table
        end

        def gtk2_widget(locations, commands)
          table = Gtk::Table.new(
            rows = 0,
            coluns = locations.size,
            homogeneous = false
          )

          table = _add_header_row(table, locations)

          commands.each { |command|
            table = _add_command_row(table, locations, command)
          }

          return table
        end
      end # class << self
    end # class CommandTable
  end # module Cheatsheet
end # module Weatherlight
