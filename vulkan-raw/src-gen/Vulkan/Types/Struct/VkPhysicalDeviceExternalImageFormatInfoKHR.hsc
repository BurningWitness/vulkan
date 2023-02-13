{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Struct.VkPhysicalDeviceExternalImageFormatInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalImageFormatInfoKHR" #-} VkPhysicalDeviceExternalImageFormatInfoKHR =
       VkPhysicalDeviceExternalImageFormatInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalImageFormatInfoKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalImageFormatInfoKHR}
  alignment _ = #{alignment VkPhysicalDeviceExternalImageFormatInfoKHR}

  peek ptr = 
    VkPhysicalDeviceExternalImageFormatInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalImageFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfoKHR, sType}

instance Offset "pNext" VkPhysicalDeviceExternalImageFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfoKHR, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalImageFormatInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalImageFormatInfoKHR where

#endif