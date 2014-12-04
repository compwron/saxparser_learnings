module Foo
    class Note
      include SAXMachine

      element :to, :as => :to_rename
      element :from, :as => :from_rename
      element :apple, :as => :apple_rename, :class => Apple
    end

end