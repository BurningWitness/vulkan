{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDeviceGroupSwapchainCreateInfoKHR}
  alignment _ = #{alignment VkDeviceGroupSwapchainCreateInfoKHR}

  peek ptr = 
    VkDeviceGroupSwapchainCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"modes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"modes" ptr val

instance Offset "sType" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupSwapchainCreateInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupSwapchainCreateInfoKHR, pNext}

instance Offset "modes" VkDeviceGroupSwapchainCreateInfoKHR where
  rawOffset = #{offset VkDeviceGroupSwapchainCreateInfoKHR, modes}

#else

module Vulkan.Types.Struct.VkDeviceGroupSwapchainCreateInfoKHR where

#endif