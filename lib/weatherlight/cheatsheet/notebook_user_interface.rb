module Weatherlight

  module Cheatsheet

    module NotebookUserInterface

      class << self

        def _add_page_label(location)
          return Gtk::Label.new(location['label'])
        end

        def _add_page_content(locations, commands, parent=nil)
          return CommandTable.gtk2_widget(
            locations,
            commands,
            parent
          )
        end

        def gtk2_widget(locations, commands, parent=nil)
          notebook = Gtk::Notebook.new
          notebook.tab_pos = Gtk::PositionType::LEFT
          locations.each { |location|
            label = _add_page_label(location)
            page_commands = commands.select { |c|
              c['right'] == location['name'] || c['left']  == location['name']
            }
            content = _add_page_content(locations, page_commands, parent)
            notebook.append_page(content, label)
          }

          all_label = Gtk::Label.new('all')
          all_content = _add_page_content(locations, commands)
          notebook.append_page(all_content, all_label)

          return notebook
        end
      end # class << self
    end # module NotebookUserInterface
  end # module Cheatsheet
end # module Weatherlight
