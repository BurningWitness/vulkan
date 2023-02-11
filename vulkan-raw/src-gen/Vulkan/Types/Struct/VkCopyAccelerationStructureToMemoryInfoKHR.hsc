{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkDeviceOrHostAddressKHR



data {-# CTYPE "vulkan/vulkan.h" "VkCopyAccelerationStructureToMemoryInfoKHR" #-} VkCopyAccelerationStructureToMemoryInfoKHR =
       VkCopyAccelerationStructureToMemoryInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkAccelerationStructureKHR
         , dst :: VkDeviceOrHostAddressKHR
         , mode :: VkCopyAccelerationStructureModeKHR
         }

instance Storable VkCopyAccelerationStructureToMemoryInfoKHR where
  sizeOf    _ = #{size      struct VkCopyAccelerationStructureToMemoryInfoKHR}
  alignment _ = #{alignment struct VkCopyAccelerationStructureToMemoryInfoKHR}

  peek ptr = 
    VkCopyAccelerationStructureToMemoryInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"src" ptr)
       <*> peek (offset @"dst" ptr)
       <*> peek (offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureToMemoryInfoKHR, sType}

instance Offset "pNext" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureToMemoryInfoKHR, pNext}

instance Offset "src" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureToMemoryInfoKHR, src}

instance Offset "dst" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureToMemoryInfoKHR, dst}

instance Offset "mode" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset struct VkCopyAccelerationStructureToMemoryInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR where

#endif