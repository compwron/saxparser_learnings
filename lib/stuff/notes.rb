module Foo
	class Notes
      include SAXMachine

      elements :note, :as => :notes_rename, :class => Note
    end
end