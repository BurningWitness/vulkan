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
  sizeOf    _ = #{size      VkCopyAccelerationStructureToMemoryInfoKHR}
  alignment _ = #{alignment VkCopyAccelerationStructureToMemoryInfoKHR}

  peek ptr = 
    VkCopyAccelerationStructureToMemoryInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"src" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dst" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureToMemoryInfoKHR, sType}

instance Offset "pNext" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureToMemoryInfoKHR, pNext}

instance Offset "src" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureToMemoryInfoKHR, src}

instance Offset "dst" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureToMemoryInfoKHR, dst}

instance Offset "mode" VkCopyAccelerationStructureToMemoryInfoKHR where
  rawOffset = #{offset VkCopyAccelerationStructureToMemoryInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkCopyAccelerationStructureToMemoryInfoKHR where

#endif