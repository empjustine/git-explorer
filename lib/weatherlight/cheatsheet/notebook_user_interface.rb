module Weatherlight

  module Cheatsheet

    module NotebookUserInterface

      class << self

        def _add_page_label(location)
          return Gtk::Label.new(location['label'])
        end

        def _add_page_content(locations, commands, location)
          page_commands = commands.select { |c|
            c['right'] == location['name'] || c['left']  == location['name']
          }

          return CommandTable.gtk2_widget(
            locations,
            page_commands
          )
        end

        def gtk2_widget(locations, commands)
          notebook = Gtk::Notebook.new
          notebook.tab_pos = Gtk::PositionType::LEFT
          locations.each { |location|
            label = _add_page_label(location)
            content = _add_page_content(locations, commands, location)
            notebook.append_page(content, label)
          }

          return notebook
        end
      end # class << self
    end # module NotebookUserInterface
  end # module Cheatsheet
end # module Weatherlight
