################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

module CZMQ
  module FFI
    
    # simple generic list container
    class Zlist
      class DestroyedError < RuntimeError; end
      
      # Boilerplate for self pointer, initializer, and finalizer
      class << self
        alias :__new :new
      end
      def initialize ptr, finalize=true
        @ptr = ptr
        if @ptr.null?
          @ptr = nil # Remove null pointers so we don't have to test for them.
        elsif finalize
          @finalizer = self.class.send :create_finalizer_for, @ptr
          ObjectSpace.define_finalizer self, @finalizer
        end
      end
      def self.create_finalizer_for ptr
        Proc.new do
          ptr_ptr = ::FFI::MemoryPointer.new :pointer
          ptr_ptr.write_pointer ptr
          ::CZMQ::FFI.zlist_destroy ptr_ptr
        end
      end
      def null?
        !@ptr or ptr.null?
      end
      # Return internal pointer
      def __ptr
        raise DestroyedError unless @ptr
        @ptr
      end
      # Nullify internal pointer and return pointer pointer
      def __ptr_give_ref
        raise DestroyedError unless @ptr
        ptr_ptr = ::FFI::MemoryPointer.new :pointer
        ptr_ptr.write_pointer @ptr
        ObjectSpace.undefine_finalizer self if @finalizer
        @finalizer = nil
        @ptr = nil
        ptr_ptr
      end
      
      # Create a new callback of the following type:
      # Comparison function for zlist_sort method
      #     typedef bool (zlist_compare_fn) (
      #         void *item1, void *item2);   
      #
      # WARNING: If your Ruby code doesn't retain a reference to the
      #   FFI::Function object after passing it to a C function call,
      #   it may be garbage collected while C still holds the pointer,
      #   potentially resulting in a segmentation fault.
      def self.compare_fn
        ::FFI::Function.new :bool, [:pointer, :pointer], blocking: true do |item1, item2|
          yield item1, item2
        end
      end
      
      # Create a new callback of the following type:
      # Equals function
      #     typedef bool (zlist_equals_fn) (
      #         void *item1, void *item2);  
      #
      # WARNING: If your Ruby code doesn't retain a reference to the
      #   FFI::Function object after passing it to a C function call,
      #   it may be garbage collected while C still holds the pointer,
      #   potentially resulting in a segmentation fault.
      def self.equals_fn
        ::FFI::Function.new :bool, [:pointer, :pointer], blocking: true do |item1, item2|
          yield item1, item2
        end
      end
      
      # Create a new callback of the following type:
      # Callback function for zlist_freefn method
      #     typedef void (zlist_free_fn) (
      #         void *data);              
      #
      # WARNING: If your Ruby code doesn't retain a reference to the
      #   FFI::Function object after passing it to a C function call,
      #   it may be garbage collected while C still holds the pointer,
      #   potentially resulting in a segmentation fault.
      def self.free_fn
        ::FFI::Function.new :void, [:pointer], blocking: true do |data|
          yield data
        end
      end
      
      # Create a new list container
      def self.new
        ptr = ::CZMQ::FFI.zlist_new
        
        __new ptr
      end
      
      # Destroy a list container
      def destroy
        return unless @ptr
        self_p = __ptr_give_ref
        result = ::CZMQ::FFI.zlist_destroy self_p
        result
      end
      
      # Return the item at the head of list. If the list is empty, returns NULL.
      # Leaves cursor pointing at the head item, or NULL if the list is empty.  
      def first
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_first @ptr
        result
      end
      
      # Return the next item. If the list is empty, returns NULL. To move to
      # the start of the list call zlist_first (). Advances the cursor.     
      def next
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_next @ptr
        result
      end
      
      # Return the item at the tail of list. If the list is empty, returns NULL.
      # Leaves cursor pointing at the tail item, or NULL if the list is empty.  
      def last
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_last @ptr
        result
      end
      
      # Return first item in the list, or null, leaves the cursor
      def head
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_head @ptr
        result
      end
      
      # Return last item in the list, or null, leaves the cursor
      def tail
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_tail @ptr
        result
      end
      
      # Return the current item of list. If the list is empty, returns NULL.     
      # Leaves cursor pointing at the current item, or NULL if the list is empty.
      def item
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_item @ptr
        result
      end
      
      # Append an item to the end of the list, return 0 if OK or -1 if this   
      # failed for some reason (out of memory). Note that if a duplicator has 
      # been set, this method will also duplicate the item.                   
      def append item
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_append @ptr, item
        result
      end
      
      # Push an item to the start of the list, return 0 if OK or -1 if this  
      # failed for some reason (out of memory). Note that if a duplicator has
      # been set, this method will also duplicate the item.                  
      def push item
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_push @ptr, item
        result
      end
      
      # Pop the item off the start of the list, if any
      def pop
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_pop @ptr
        result
      end
      
      # Checks if an item already is present. Uses compare method to determine if  
      # items are equal. If the compare method is NULL the check will only compare 
      # pointers. Returns true if item is present else false.                      
      def exists item
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_exists @ptr, item
        result
      end
      
      # Remove the specified item from the list if present
      def remove item
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_remove @ptr, item
        result
      end
      
      # Make a copy of list. If the list has autofree set, the copied list will  
      # duplicate all items, which must be strings. Otherwise, the list will hold
      # pointers back to the items in the original list.                         
      def dup
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_dup @ptr
        result = Zlist.__new result, true
        result
      end
      
      # Purge all items from list
      def purge
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_purge @ptr
        result
      end
      
      # Return number of items in the list
      def size
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_size @ptr
        result
      end
      
      # Sort the list by ascending key value using a straight ASCII comparison.
      # The sort is not stable, so may reorder items with the same keys.       
      def sort compare
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_sort @ptr, compare
        result
      end
      
      # Set list for automatic item destruction; item values MUST be strings. 
      # By default a list item refers to a value held elsewhere. When you set 
      # this, each time you append or push a list item, zlist will take a copy
      # of the string value. Then, when you destroy the list, it will free all
      # item values automatically. If you use any other technique to allocate 
      # list values, you must free them explicitly before destroying the list.
      # The usual technique is to pop list items and destroy them, until the  
      # list is empty.                                                        
      def autofree
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_autofree @ptr
        result
      end
      
      # Set an equals function for the list. This function is used for the   
      # methods zlist_exists and zlist_remove. If there is more than one item
      # in the list that equals matchesi, only the first occurence will be   
      # processed.                                                           
      def equalsfn fn
        raise DestroyedError unless @ptr
        result = ::CZMQ::FFI.zlist_equalsfn @ptr, fn
        result
      end
      
      # Set a free function for the specified list item. When the item is     
      # destroyed, the free function, if any, is called on that item.         
      # Use this when list items are dynamically allocated, to ensure that    
      # you don't have memory leaks. You can pass 'free' or NULL as a free_fn.
      # Returns the item, or NULL if there is no such item.                   
      def freefn item, fn, at_tail
        raise DestroyedError unless @ptr
        at_tail = !(0==at_tail||!at_tail) # boolean
        result = ::CZMQ::FFI.zlist_freefn @ptr, item, fn, at_tail
        result
      end
      
      # Self test of this class
      def self.test verbose
        verbose = Integer(verbose)
        result = ::CZMQ::FFI.zlist_test verbose
        result
      end
    end
    
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
