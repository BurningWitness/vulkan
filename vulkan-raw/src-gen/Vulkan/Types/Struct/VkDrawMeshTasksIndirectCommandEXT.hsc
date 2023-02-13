{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mesh_shader

module Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDrawMeshTasksIndirectCommandEXT" #-} VkDrawMeshTasksIndirectCommandEXT =
       VkDrawMeshTasksIndirectCommandEXT
         { groupCountX :: #{type uint32_t}
         , groupCountY :: #{type uint32_t}
         , groupCountZ :: #{type uint32_t}
         }

instance Storable VkDrawMeshTasksIndirectCommandEXT where
  sizeOf    _ = #{size      VkDrawMeshTasksIndirectCommandEXT}
  alignment _ = #{alignment VkDrawMeshTasksIndirectCommandEXT}

  peek ptr = 
    VkDrawMeshTasksIndirectCommandEXT
       <$> peek (Foreign.Storable.Offset.offset @"groupCountX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"groupCountY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"groupCountZ" ptr)

  poke ptr val = do
    pokeField @"groupCountX" ptr val
    pokeField @"groupCountY" ptr val
    pokeField @"groupCountZ" ptr val

instance Offset "groupCountX" VkDrawMeshTasksIndirectCommandEXT where
  rawOffset = #{offset VkDrawMeshTasksIndirectCommandEXT, groupCountX}

instance Offset "groupCountY" VkDrawMeshTasksIndirectCommandEXT where
  rawOffset = #{offset VkDrawMeshTasksIndirectCommandEXT, groupCountY}

instance Offset "groupCountZ" VkDrawMeshTasksIndirectCommandEXT where
  rawOffset = #{offset VkDrawMeshTasksIndirectCommandEXT, groupCountZ}

#else

module Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandEXT where

#endif