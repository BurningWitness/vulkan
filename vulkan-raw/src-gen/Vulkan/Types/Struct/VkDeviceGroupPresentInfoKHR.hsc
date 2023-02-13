{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkDeviceGroupPresentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagBitsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupPresentInfoKHR" #-} VkDeviceGroupPresentInfoKHR =
       VkDeviceGroupPresentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , swapchainCount :: #{type uint32_t}
         , pDeviceMasks :: Ptr #{type uint32_t}
         , mode :: VkDeviceGroupPresentModeFlagBitsKHR
         }

instance Storable VkDeviceGroupPresentInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupPresentInfoKHR}
  alignment _ = #{alignment VkDeviceGroupPresentInfoKHR}

  peek ptr = 
    VkDeviceGroupPresentInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"swapchainCount" ptr)
       <*> peek (offset @"pDeviceMasks" ptr)
       <*> peek (offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"swapchainCount" ptr val
    pokeField @"pDeviceMasks" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkDeviceGroupPresentInfoKHR where
  rawOffset = #{offset VkDeviceGroupPresentInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupPresentInfoKHR where
  rawOffset = #{offset VkDeviceGroupPresentInfoKHR, pNext}

instance Offset "swapchainCount" VkDeviceGroupPresentInfoKHR where
  rawOffset = #{offset VkDeviceGroupPresentInfoKHR, swapchainCount}

instance Offset "pDeviceMasks" VkDeviceGroupPresentInfoKHR where
  rawOffset = #{offset VkDeviceGroupPresentInfoKHR, pDeviceMasks}

instance Offset "mode" VkDeviceGroupPresentInfoKHR where
  rawOffset = #{offset VkDeviceGroupPresentInfoKHR, mode}

#else

module Vulkan.Types.Struct.VkDeviceGroupPresentInfoKHR where

#endif