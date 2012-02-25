require 'gtk2'
require 'amatch'

#------------------------------

treestore = Gtk::TreeStore.new(String, String)
# Append an empty top-level row to the tree store.

parent_iter = treestore.append(nil)
parent_iter[0] = 'root1'
parent_iter[1] = 'master o'

# Append a child to the row we just added.
child_iter = treestore.append(parent_iter)
child_iter[0] = 'data1'
child_iter[1] = 'hidden'
child_iter = treestore.append(parent_iter)
child_iter[0] = 'data2'
child_iter[1] = 'urza l'
child_iter = treestore.append(parent_iter)
child_iter[0] = 'data3'
child_iter[1] = 'dungeons'
child_iter = treestore.append(parent_iter)
child_iter[0] = 'data4'
child_iter[1] = 'katamari'

#treestore.remove(child_iter)

view = Gtk::TreeView.new(treestore)
#view.rules_hint #ruled lines. Boolean

renderer = Gtk::CellRendererText.new
col = Gtk::TreeViewColumn.new("First Name", renderer, :text => 0)
view.append_column(col)

renderer2 = Gtk::CellRendererText.new
col2 = Gtk::TreeViewColumn.new("First Name", renderer, :text => 1)
view.append_column(col2)

view.enable_search = true
view.search_column = 1
view.selection.mode = Gtk::SELECTION_MULTIPLE
######Gtk::TreeSelection#selected_each

model = []

#view.set_search_equal_func  { |model, columnm, key, iter|
   # model: Gtk::TreeModel
   # column: Integer
   # key: String
   # iter Gtk::TreeIter
#}

window = Gtk::Window.new(Gtk::Window::TOPLEVEL)
window.signal_connect("delete_event") { Gtk.main_quit; exit! }
window.add(view)
window.show_all

Gtk.main
