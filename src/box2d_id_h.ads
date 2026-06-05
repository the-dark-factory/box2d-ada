pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with utypes_uuint16_t_h;
with sys_utypes_uint32_t_h;
with sys_utypes_uint16_t_h;
with utypes_uuint32_t_h;
with utypes_uuint64_t_h;

package box2d_id_h is

   --  unsupported macro: B2_NULL_ID { 0 }
   --  unsupported macro: B2_ID_INLINE static inline
   --  arg-macro: function B2_IS_NULL (id)
   --    return  (id).index1 = 0 ;
   --  arg-macro: function B2_IS_NON_NULL (id)
   --    return  (id).index1 /= 0 ;
   --  arg-macro: function B2_ID_EQUALS (id1, id2)
   --    return  (id1).index1 = (id2).index1  and then  (id1).world0 = (id2).world0  and then  (id1).generation = (id2).generation ;
   type b2WorldId is record
      index1 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:39
      generation : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:37

   type b2BodyId is record
      index1 : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:46
      world0 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:47
      generation : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:44

   type b2ShapeId is record
      index1 : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:54
      world0 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:55
      generation : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:52

   type b2ChainId is record
      index1 : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:62
      world0 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:63
      generation : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:60

   type b2JointId is record
      index1 : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:70
      world0 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:71
      generation : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:72
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:68

   type b2ContactId is record
      index1 : aliased sys_utypes_uint32_t_h.int32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:78
      world0 : aliased utypes_uuint16_t_h.uint16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:79
      padding : aliased sys_utypes_uint16_t_h.int16_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:80
      generation : aliased utypes_uuint32_t_h.uint32_t;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:81
   end record
   with Convention => C_Pass_By_Copy;  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:76

   b2_nullWorldId : aliased constant b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullWorldId";

   b2_nullBodyId : aliased constant b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullBodyId";

   b2_nullShapeId : aliased constant b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullShapeId";

   b2_nullChainId : aliased constant b2ChainId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullChainId";

   b2_nullJointId : aliased constant b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullJointId";

   b2_nullContactId : aliased constant b2ContactId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "b2_nullContactId";

   function b2StoreWorldId (id : b2WorldId) return utypes_uuint32_t_h.uint32_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreWorldId";

   function b2LoadWorldId (x : utypes_uuint32_t_h.uint32_t) return b2WorldId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadWorldId";

   function b2StoreBodyId (id : b2BodyId) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreBodyId";

   function b2LoadBodyId (x : utypes_uuint64_t_h.uint64_t) return b2BodyId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadBodyId";

   function b2StoreShapeId (id : b2ShapeId) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreShapeId";

   function b2LoadShapeId (x : utypes_uuint64_t_h.uint64_t) return b2ShapeId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadShapeId";

   function b2StoreChainId (id : b2ChainId) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreChainId";

   function b2LoadChainId (x : utypes_uuint64_t_h.uint64_t) return b2ChainId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadChainId";

   function b2StoreJointId (id : b2JointId) return utypes_uuint64_t_h.uint64_t  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreJointId";

   function b2LoadJointId (x : utypes_uuint64_t_h.uint64_t) return b2JointId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadJointId";

   procedure b2StoreContactId (id : b2ContactId; values : access utypes_uuint32_t_h.uint32_t)  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "b2StoreContactId";

   function b2LoadContactId (values : access utypes_uuint32_t_h.uint32_t) return b2ContactId  -- /Users/tony/dev/box2d-ada/vendor/box2d/include/box2d/id.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "b2LoadContactId";

end box2d_id_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
