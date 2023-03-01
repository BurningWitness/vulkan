{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_capabilities

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalFenceInfoKHR" #-} VkPhysicalDeviceExternalFenceInfoKHR =
       VkPhysicalDeviceExternalFenceInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalFenceHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalFenceInfoKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalFenceInfoKHR}
  alignment _ = #{alignment VkPhysicalDeviceExternalFenceInfoKHR}

  peek ptr = 
    VkPhysicalDeviceExternalFenceInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalFenceInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfoKHR, sType}

instance Offset "pNext" VkPhysicalDeviceExternalFenceInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfoKHR, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalFenceInfoKHR where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfoKHR, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfoKHR where

#endif