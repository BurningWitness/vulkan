{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkBufferCreateFlags
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalBufferInfoKHR" #-} VkPhysicalDeviceExternalBufferInfoKHR =
       VkPhysicalDeviceExternalBufferInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkBufferCreateFlags
         , usage :: VkBufferUsageFlags
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalBufferInfoKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalBufferInfoKHR}
  alignment _ = #{alignment VkPhysicalDeviceExternalBufferInfoKHR}

  peek ptr = 
    VkPhysicalDeviceExternalBufferInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"usage" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"usage" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalBufferInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfoKHR, sType}

instance Offset "pNext" VkPhysicalDeviceExternalBufferInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfoKHR, pNext}

instance Offset "flags" VkPhysicalDeviceExternalBufferInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfoKHR, flags}

instance Offset "usage" VkPhysicalDeviceExternalBufferInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfoKHR, usage}

instance Offset "handleType" VkPhysicalDeviceExternalBufferInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalBufferInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfoKHR where

#endif