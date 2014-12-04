module Foo
	class File < OpenStruct
      include SAXMachine

      elements :notes, :as => :notes_rename, :class => Notes
    end
end