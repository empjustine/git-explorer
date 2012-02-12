require 'json'
require 'gtk2'

require './weatherlight/cheatsheet/command_table'
require './weatherlight/cheatsheet/notebook_user_interface'

module Weatherlight

  module Cheatsheet

    COMMANDS  = JSON.load(File.open('./weatherlight/cheatsheet/commands.js' ))
    LOCATIONS = JSON.load(File.open('./weatherlight/cheatsheet/locations.js'))

    class << self

      def display(locations, commands)
        window = Gtk::Window.new
        window.signal_connect("delete_event") {
          puts 'delete event'
          Gtk.main_quit
          false
        }

        window.add(NotebookUserInterface.gtk2_widget(locations, commands))
        window.title = "Git Cheatsheet"

        window.show_all
        Gtk.main
      end
    end # class << self
  end # module Cheatsheet
end # module Weatherlight

Weatherlight::Cheatsheet.display(
    Weatherlight::Cheatsheet::LOCATIONS.dup[1..-1],
    Weatherlight::Cheatsheet::COMMANDS.dup
)
