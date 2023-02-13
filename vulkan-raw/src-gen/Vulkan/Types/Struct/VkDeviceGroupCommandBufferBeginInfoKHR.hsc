{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Struct.VkDeviceGroupCommandBufferBeginInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupCommandBufferBeginInfoKHR" #-} VkDeviceGroupCommandBufferBeginInfoKHR =
       VkDeviceGroupCommandBufferBeginInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkDeviceGroupCommandBufferBeginInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupCommandBufferBeginInfoKHR}
  alignment _ = #{alignment VkDeviceGroupCommandBufferBeginInfoKHR}

  peek ptr = 
    VkDeviceGroupCommandBufferBeginInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkDeviceGroupCommandBufferBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupCommandBufferBeginInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupCommandBufferBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupCommandBufferBeginInfoKHR, pNext}

instance Offset "deviceMask" VkDeviceGroupCommandBufferBeginInfoKHR where
  rawOffset = #{offset VkDeviceGroupCommandBufferBeginInfoKHR, deviceMask}

#else

module Vulkan.Types.Struct.VkDeviceGroupCommandBufferBeginInfoKHR where

#endif