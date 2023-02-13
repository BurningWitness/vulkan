{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_mesh_shader

module Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkDrawMeshTasksIndirectCommandNV" #-} VkDrawMeshTasksIndirectCommandNV =
       VkDrawMeshTasksIndirectCommandNV
         { taskCount :: #{type uint32_t}
         , firstTask :: #{type uint32_t}
         }

instance Storable VkDrawMeshTasksIndirectCommandNV where
  sizeOf    _ = #{size      VkDrawMeshTasksIndirectCommandNV}
  alignment _ = #{alignment VkDrawMeshTasksIndirectCommandNV}

  peek ptr = 
    VkDrawMeshTasksIndirectCommandNV
       <$> peek (Foreign.Storable.Offset.offset @"taskCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"firstTask" ptr)

  poke ptr val = do
    pokeField @"taskCount" ptr val
    pokeField @"firstTask" ptr val

instance Offset "taskCount" VkDrawMeshTasksIndirectCommandNV where
  rawOffset = #{offset VkDrawMeshTasksIndirectCommandNV, taskCount}

instance Offset "firstTask" VkDrawMeshTasksIndirectCommandNV where
  rawOffset = #{offset VkDrawMeshTasksIndirectCommandNV, firstTask}

#else

module Vulkan.Types.Struct.VkDrawMeshTasksIndirectCommandNV where

#endif