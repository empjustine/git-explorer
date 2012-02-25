module Weatherlight

  module Commander

    class << self

      def gtk2_widget(command)
        command_line = command['command'] || command ['label']
        elements = command_line.split("\t").select { |part|
          not part.empty?
        }
        
        hbox = Gtk::HBox.new(
          homogeneous = false,
          spacing = nil
        )

        elements.map { |part|
          if 'local-branch-or-commit' == part
            puts "branch or commit"

          elsif 'files' == part
            element = _add_files
          elsif 'message' == part
            element = Gtk::Entry.new
          elsif 'local-branch' == part
            element = 
          elsif 'new-branch' == part
            element = Gtk::Entry.new
          elsif 'local-commit' == part
            element
          elsif 'new-local-branch' == part
            element = Gtk::Entry.new
          elsif 'upstream-branch' == part
            element
          elsif 'repo' == part
            element
          elsif 'upstream-branch-or-commit' == part
            element
          elsif 'new-remote-branch' == part
            element = Gtk::Entry.new
          elsif 'new-stash' == part
            element = Gtk::Entry.new
          elsif 'stash' == part
            element = Gtk::ComboBox.new(
            )
            element.append_text()	
          else
            element = Gtk::Label(part)
          end

          hbox.pack_start_defaults(element)
        }

        return table
      end
    end # class << self
  end # module Commander
end # module Weatherlight
