pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with utypes_uuint32_t_h;
with utypes_uuint64_t_h;
with utypes_uuint8_t_h;

package box2d_base_h is

   B2_NULL_INDEX : constant := ( -1 );  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:9
   --  unsupported macro: B2_API BOX2D_EXPORT
   --  unsupported macro: B2_INLINE static inline
   --  arg-macro: function B2_LITERAL (T)
   --    return T;
   --  unsupported macro: B2_ZERO_INIT {0}

   B2_ENABLE_VALIDATION : constant := 0;  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:46
   --  unsupported macro: B2_BREAKPOINT __builtin_trap()
   --  unsupported macro: B2_ASSERT(condition) ( (void)( ( !!( condition ) ) || ( b2InternalAssert( #condition, __FILE__, (int)( __LINE__ ) ), 0 ) ) )
   --  unsupported macro: B2_VALIDATE(...) ( (void)0 )

   B2_HASH_INIT : constant := 5381;  --  /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:151

   --  skipped function type b2AllocFcn

   --  skipped function type b2FreeFcn

   --  skipped function type b2AssertFcn

   --  skipped function type b2LogFcn

   procedure b2SetAllocator (allocFcn : access function (arg1 : unsigned; arg2 : int) return System.Address; freeFcn : access procedure (arg1 : System.Address; arg2 : unsigned))  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "b2SetAllocator";

   function b2GetByteCount return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetByteCount";

   procedure b2SetAssertFcn (assertFcn : access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int) return int)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "b2SetAssertFcn";

   procedure b2SetLogFcn (logFcn : access procedure (arg1 : Interfaces.C.Strings.chars_ptr))  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "b2SetLogFcn";

   type b2Version is record
      major : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:91
      minor : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:94
      revision : aliased int;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:97
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:88

   function b2GetVersion return b2Version  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetVersion";

   function b2GetBuildHash return utypes_uuint32_t_h.uint32_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetBuildHash";

   function b2InternalAssert
     (condition : Interfaces.C.Strings.chars_ptr;
      fileName : Interfaces.C.Strings.chars_ptr;
      lineNumber : int) return int  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "b2InternalAssert";

   function b2GetTicks return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetTicks";

   function b2GetMilliseconds (ticks : utypes_uuint64_t_h.uint64_t) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetMilliseconds";

   function b2GetMillisecondsAndReset (ticks : access utypes_uuint64_t_h.uint64_t) return float  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "b2GetMillisecondsAndReset";

   procedure b2Yield  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "b2Yield";

   function b2Hash
     (hash : utypes_uuint32_t_h.uint32_t;
      data : access utypes_uuint8_t_h.uint8_t;
      count : int) return utypes_uuint32_t_h.uint32_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/base.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "b2Hash";

end box2d_base_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
