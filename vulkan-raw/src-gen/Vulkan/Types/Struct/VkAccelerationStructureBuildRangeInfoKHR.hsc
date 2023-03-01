{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkAccelerationStructureBuildRangeInfoKHR}
  alignment _ = #{alignment VkAccelerationStructureBuildRangeInfoKHR}

  peek ptr = 
    VkAccelerationStructureBuildRangeInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"primitiveCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitiveOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"firstVertex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"transformOffset" ptr)

  poke ptr val = do
    pokeField @"primitiveCount" ptr val
    pokeField @"primitiveOffset" ptr val
    pokeField @"firstVertex" ptr val
    pokeField @"transformOffset" ptr val

instance Offset "primitiveCount" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildRangeInfoKHR, primitiveCount}

instance Offset "primitiveOffset" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildRangeInfoKHR, primitiveOffset}

instance Offset "firstVertex" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildRangeInfoKHR, firstVertex}

instance Offset "transformOffset" VkAccelerationStructureBuildRangeInfoKHR where
  rawOffset = #{offset VkAccelerationStructureBuildRangeInfoKHR, transformOffset}

#else

module Vulkan.Types.Struct.VkAccelerationStructureBuildRangeInfoKHR where

#endif