{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Struct.VkDeviceGroupSwapchainCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupSwapchainCreateInfoKHR" #-} VkDeviceGroupSwapchainCreateInfoKHR =
       VkDeviceGroupSwapchainCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , modes :: VkDeviceGroupPresentModeFlagsKHR
         }

instance Storable VkDeviceGroupSwapchainCreateInfoKHR where
  sizeOf    _ = #{size      struct VkDeviceGroupSwapchainCreateInfoKHR}
  alignment _ = #{alignment struct VkDeviceGroupSwapchainCreateInfoKHR}

  peek ptr = 
    VkDeviceGroupSwapchainCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"modes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"modes" ptr val

instance Offset "sType" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceGroupSwapchainCreateInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceGroupSwapchainCreateInfoKHR, pNext}

instance Offset "modes" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset struct VkDeviceGroupSwapchainCreateInfoKHR, modes}

#else

module Vulkan.Types.Struct.VkDeviceGroupSwapchainCreateInfoKHR where

#endif