{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_capabilities

module Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalSemaphoreInfoKHR" #-} VkPhysicalDeviceExternalSemaphoreInfoKHR =
       VkPhysicalDeviceExternalSemaphoreInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalSemaphoreInfoKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalSemaphoreInfoKHR}
  alignment _ = #{alignment VkPhysicalDeviceExternalSemaphoreInfoKHR}

  peek ptr = 
    VkPhysicalDeviceExternalSemaphoreInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalSemaphoreInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfoKHR, sType}

instance Offset "pNext" VkPhysicalDeviceExternalSemaphoreInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfoKHR, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalSemaphoreInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfoKHR where

#endif