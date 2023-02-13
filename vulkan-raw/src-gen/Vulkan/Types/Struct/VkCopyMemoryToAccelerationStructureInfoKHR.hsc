{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_acceleration_structure

module Vulkan.Types.Struct.VkCopyMemoryToAccelerationStructureInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMemoryToAccelerationStructureInfoKHR" #-} VkCopyMemoryToAccelerationStructureInfoKHR =
       VkCopyMemoryToAccelerationStructureInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkDeviceOrHostAddressConstKHR
         , dst :: VkAccelerationStructureKHR
         , mode :: VkCopyAccelerationStructureModeKHR
         }

instance Storable VkCopyMemoryToAccelerationStructureInfoKHR where
  sizeOf    _ = #{size      VkCopyMemoryToAccelerationStructureInfoKHR}
  alignment _ = #{alignment VkCopyMemoryToAccelerationStructureInfoKHR}

  peek ptr = 
    VkCopyMemoryToAccelerationStructureInfoKHR
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

instance Offset "sType" VkCopyMemoryToAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyMemoryToAccelerationStructureInfoKHR, sType}

instance Offset "pNext" VkCopyMemoryToAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyMemoryToAccelerationStructureInfoKHR, pNext}

instance Offset "src" VkCopyMemoryToAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyMemoryToAccelerationStructureInfoKHR, src}

instance Offset "dst" VkCopyMemoryToAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyMemoryToAccelerationStructureInfoKHR, dst}

instance Offset "mode" VkCopyMemoryToAccelerationStructureInfoKHR where
  rawOffset = #{offset VkCopyMemoryToAccelerationStructureInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkCopyMemoryToAccelerationStructureInfoKHR where

#endif