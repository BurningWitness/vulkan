{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Struct.VkDeviceGroupBindSparseInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupBindSparseInfoKHR" #-} VkDeviceGroupBindSparseInfoKHR =
       VkDeviceGroupBindSparseInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , resourceDeviceIndex :: #{type uint32_t}
         , memoryDeviceIndex :: #{type uint32_t}
         }

instance Storable VkDeviceGroupBindSparseInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupBindSparseInfoKHR}
  alignment _ = #{alignment VkDeviceGroupBindSparseInfoKHR}

  peek ptr = 
    VkDeviceGroupBindSparseInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"resourceDeviceIndex" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memoryDeviceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"resourceDeviceIndex" ptr val
    pokeField @"memoryDeviceIndex" ptr val

instance Offset "sType" VkDeviceGroupBindSparseInfoKHR where
  rawOffset = #{offset VkDeviceGroupBindSparseInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupBindSparseInfoKHR where
  rawOffset = #{offset VkDeviceGroupBindSparseInfoKHR, pNext}

instance Offset "resourceDeviceIndex" VkDeviceGroupBindSparseInfoKHR where
  rawOffset = #{offset VkDeviceGroupBindSparseInfoKHR, resourceDeviceIndex}

instance Offset "memoryDeviceIndex" VkDeviceGroupBindSparseInfoKHR where
  rawOffset = #{offset VkDeviceGroupBindSparseInfoKHR, memoryDeviceIndex}

#else

module Vulkan.Types.Struct.VkDeviceGroupBindSparseInfoKHR where

#endif