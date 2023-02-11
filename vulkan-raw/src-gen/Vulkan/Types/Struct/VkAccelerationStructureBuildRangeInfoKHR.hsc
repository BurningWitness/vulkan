{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkAccelerationStructureBuildRangeInfoKHR" #-} VkAccelerationStructureBuildRangeInfoKHR =
       VkAccelerationStructureBuildRangeInfoKHR
         { primitiveCount :: #{type uint32_t}
         , primitiveOffset :: #{type uint32_t}
         , firstVertex :: #{type uint32_t}
         , transformOffset :: #{type uint32_t}
         }

instance Storable VkAccelerationStructureBuildRangeInfoKHR where
  sizeOf    _ = #{size      struct VkAccelerationStructureBuildRangeInfoKHR}
  alignment _ = #{alignment struct VkAccelerationStructureBuildRangeInfoKHR}

  peek ptr = 
    VkAccelerationStructureBuildRangeInfoKHR
       <$> peek (offset @"primitiveCount" ptr)
       <*> peek (offset @"primitiveOffset" ptr)
       <*> peek (offset @"firstVertex" ptr)
       <*> peek (offset @"transformOffset" ptr)

  poke ptr val = do
    pokeField @"primitiveCount" ptr val
    pokeField @"primitiveOffset" ptr val
    pokeField @"firstVertex" ptr val
    pokeField @"transformOffset" ptr val

instance Offset "primitiveCount" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildRangeInfoKHR, primitiveCount}

instance Offset "primitiveOffset" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildRangeInfoKHR, primitiveOffset}

instance Offset "firstVertex" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildRangeInfoKHR, firstVertex}

instance Offset "transformOffset" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset struct VkAccelerationStructureBuildRangeInfoKHR, transformOffset}

#else

module Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR where

#endif